//
//  ContentView.swift
//  Course List
//
//  Created by Aytek Özgül on 2.01.2024.
//

import SwiftUI

struct CourseViewController: View {
    @State var courses : [Course] = []
    
    var body: some View {
        NavigationStack {
            if courses.count == 0 {
                VStack{
                    ProgressView()
                        .padding()
                    Text("We're on it ")
                    
                }
                .foregroundStyle(Color.secondary)
                .onAppear{getCourses()}
            }else {
                ScrollView{
                    VStack(){
                        ForEach(courses){course in
                            CourseTileView(course: course)
                        }
                        
                    }
                }
                .navigationTitle("Use Api's")
            }
        }
        
    }
    func getCourses(){
        if let apiURL = URL(string: "https://zappycode.com/api/courses?format=json"){
            var request = URLRequest(url: apiURL)
            request.httpMethod = "GET"
            URLSession.shared.dataTask(with: request) { data, responce, error in
                if let courseData = data {
                    //print(String(data: courseData , encoding: .utf8) ?? "Error")
                    if let coursesFromAPI = try? JSONDecoder().decode([Course].self, from: courseData){
                        courses = coursesFromAPI
                        print(courses)
                    }
                    
                }
            }.resume()
        }
    }
}

#Preview {
    CourseViewController()
}
