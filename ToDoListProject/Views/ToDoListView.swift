//
//  ToDoListItemsView.swift
//  ToDoListProject
//
//  Created by Diana Kim on 5/20/24.
//

import SwiftUI

struct ToDoListView: View {
    
    @StateObject var viewModel = ToDoListViewViewModel()
    
    private let userId : String
    
    init(userId: String){
        self.userId = userId
        
    }
    
    var body: some View {
        NavigationView(content: {
            VStack(content: {
                
            })
            .navigationTitle("To Do List")
            .toolbar{
                Button(action: {
                    viewModel.showingNewItemView = true
                }, label: {
                    Image(systemName: "plus.circle")
                })
            }
            .sheet(isPresented: $viewModel.showingNewItemView, content: {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            })
        })
    }
}

#Preview {
    ToDoListView(userId: "")
}
