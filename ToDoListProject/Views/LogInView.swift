//
//  LogInView.swift
//  ToDoListProject
//
//  Created by Diana Kim on 5/20/24.
//

import SwiftUI

struct LogInView: View {
    
    @State var email = ""
    @State var password = ""
    

    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView()
                
                // Login Form
                Form{
                    TextField("Email", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    Button{
                        //Attempt log in
                    } label: {
                        ZStack(content: {
                            RoundedRectangle(cornerRadius: 40)
                                .foregroundColor(.orange)
                            
                            Text("Log In")
                                .foregroundColor(.white)
                                .bold()
                        })
                    }
                    .padding()
                }
                
                // Create Account
                VStack(content: {
                    Text("New around here?")
                    NavigationLink("Create an Account", destination: RegisterView())
                })
                .padding(.bottom, 40)
                
                
                Spacer()
            }
        }
    }
}

#Preview {
    LogInView()
}
