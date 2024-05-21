//
//  HeaderView.swift
//  ToDoListProject
//
//  Created by Diana Kim on 5/20/24.
//

import SwiftUI
import FirebaseCore

struct HeaderView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.orange)
                .rotationEffect(Angle(degrees: 15))
           
            VStack(content: {
                Text("Taskly")
                    .font(.system(size: 55, weight: .black, design: .rounded))
                    .foregroundColor(.white)
                Text("Get Things Done!")
                    .font(.system(size:23, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            })
            .padding(.top, 60)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 300)
        .offset(y: -100)
         
    }
}

#Preview {
    HeaderView()
}
