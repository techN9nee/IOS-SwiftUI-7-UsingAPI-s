//
//  DefaultImage.swift
//  Course List
//
//  Created by Aytek Özgül on 8.01.2024.
//

import SwiftUI

struct DefaultImage: View {
    var body: some View {
        
        VStack{
            ProgressView()
                .padding()
                .font(.largeTitle)
            Image(systemName: "books.vertical")
                .font(.largeTitle)
                .padding(.bottom , 3)
            Text("Grabbing the image ... ")
        }.padding(.vertical,50)
            .frame(maxWidth:.infinity)
            .background{
                Color.gray
                    .opacity(0.4)
            }

    }
}

#Preview {
    DefaultImage()
}
