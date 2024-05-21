//
//  LogInView.swift
//  ToDoListProject
//
//  Created by Diana Kim on 5/20/24.
//

import SwiftUI

struct LogInView: View {
    
    // ****
   @StateObject var viewModel = LogInViewVM()

    var body: some View {
        NavigationView {
            VStack {
                
                // Header
                HeaderView(title: "Taskly", subtitle: "Get Things Done!", angle: 15, background: .orange)
                
                // Login Form
                Form{
                    
                    // Error message
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    
                    TextField("Email", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(
                        
                        title: "Log In",
                        background: .orange,
                        action: {
                            viewModel.login()
                    })
                  
                }
                .offset (y:-55)
                
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
