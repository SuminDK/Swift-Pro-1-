//
//  ContentView.swift
//  ToDoListProject
//
//  Created by Diana Kim on 5/20/24.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()

    var body: some View {
        // is the user already signed in?
        if viewModel.isSignedIn , !viewModel.currentUserId.isEmpty{
            accountView
        }else{
            
            LogInView()
        }
    }
    
    @ViewBuilder
    var accountView: some View{
        TabView {
        ToDoListView(userId: viewModel.currentUserId)
            .tabItem {
                Label("Home", systemImage: "house" )
            }
        
        ProfileView()
            .tabItem {
                Label("Profile", systemImage: "person.circle" )
            }
        }
    }
}

#Preview {
    MainView()
}
