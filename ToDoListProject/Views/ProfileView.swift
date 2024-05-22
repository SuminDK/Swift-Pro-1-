//
//  ProfileView.swift
//  ToDoListProject
//
//  Created by Diana Kim on 5/20/24.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfilViewViewModel()
    
    init (){
        
    }
    
    
    var body: some View {
        NavigationView(content: {
            VStack(content: {
                
            })
            .navigationTitle("Profile")
        })
    }
}

#Preview {
    ProfileView()
}
