//
//  HeaderView.swift
//  ToDoListProject
//
//  Created by Diana Kim on 5/20/24.
//

import SwiftUI
import FirebaseCore

struct HeaderView: View {
    let title : String
    let subtitle : String
    let angle : Double
    let background : Color
    
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
           
            VStack(content: {
                Text(title)
                    .font(.system(size: 55, weight: .black, design: .rounded))
                    .foregroundColor(.white)
                Text(subtitle)
                    .font(.system(size:23, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            })
            .padding(.top, 83)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -150)
         
    }
}

#Preview {
    HeaderView(title: "Title", subtitle: "Subtitle", angle: 15, background: .blue)
}
