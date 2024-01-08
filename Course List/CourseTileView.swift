//
//  CourseTileView.swift
//  Course List
//
//  Created by Aytek Özgül on 8.01.2024.
//

import SwiftUI

struct CourseTileView: View {
    let course : Course
    
    var body: some View {
        ZStack{
            
            AsyncImage(url: URL(string : course.image)){ responce in switch responce {
            case.success(let image):
                image
                    .resizable()
                    .scaledToFill()
            default:
                DefaultImage()
            }
                
            }
            VStack{
                Spacer()
                HStack{
                    Text(course.title)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .bold()
                        .padding(4)
                        .foregroundStyle(.white)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background{
                            Color.green
                        }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    CourseTileView(course: Course(id: 1, image: "work.com", title: "Hi there", subtitle: "Sub sub "))
        .frame(height:200)
}
