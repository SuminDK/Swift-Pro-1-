//
//  TLButton.swift
//  ToDoListProject
//
//  Created by Diana Kim on 5/21/24.
//

import SwiftUI

struct TLButton: View {
    
    let title : String
    let background: Color
    let action : () -> Void
    
    var body: some View {
        Button{
          // Action
            action()
        } label: {
            ZStack(content: {
                RoundedRectangle(cornerRadius: 40)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            })
        }
        .padding()
    }
}

#Preview {
    TLButton(title: "Value", background: .orange, action: {
        //Action
    })
}
