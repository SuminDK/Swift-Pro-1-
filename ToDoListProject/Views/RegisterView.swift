//
//  RegisterView.swift
//  ToDoListProject
//
//  Created by Diana Kim on 5/20/24.
//

import SwiftUI

struct RegisterView: View {
  @StateObject var viewModel = RegisterViewModel()
    
    var body: some View {
        VStack {
            
            // Header
            HeaderView(title: "Register", subtitle: "Get your task on!", angle: -15, background: .pink)
            
            Form{
                TextField("Full Name", text : $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email", text : $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Password", text : $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(
                    title: "Create Account",
                    background: .pink,
                    action: {
                        viewModel.register()
                })
                
            }
            .offset(y: -50)
            
            
            
            
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
