//
//  ProfileView.swift
//  ToDoListProject
//
//  Created by Diana Kim on 5/20/24.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewViewModel()
    var body: some View {
        NavigationView(content: {

            VStack(content: {
                if let user = viewModel.user{
                    profile(user: user)
                }else{
                    Text("Loading Profile...")
                }
            })
            .navigationTitle("Profile")
        })
        .onAppear{
            viewModel.fetchUser()
        }
    }
    @ViewBuilder
    func profile(user: User) -> some View {
        // Avatar
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(Color.orange)
            .frame(width: 115, height: 115)
            .padding()
        // Info: Name, Email, Member since
        VStack(alignment: .leading){
            HStack(content: {
                Text("Name : ")
                    .bold()
                Text(user.name)
            })
            .padding()
            HStack(content: {
                Text("Email : ")
                    .bold()
                Text(user.email)
            })
            .padding()
            HStack(content: {
                Text("Member Since : ")
                    .bold()
                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .omitted))")
            })
            .padding()
        }
        .padding()
        
        // Sign out
        
        Button("Log Out"){
            viewModel.logOut()
        }
        .tint(Color.red)
        .padding()
         
        Spacer()
    }
}

#Preview {
    ProfileView()
}
