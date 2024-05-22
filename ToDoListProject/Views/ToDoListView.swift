//
//  ToDoListItemsView.swift
//  ToDoListProject
//
//  Created by Diana Kim on 5/20/24.
//

import FirebaseFirestoreSwift
import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    @FirestoreQuery var items: [ToDoListItem]
    

    init(userId: String){
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
        
    }
    
    var body: some View {
        NavigationView(content: {
            VStack(content: {
                List(items){item in
                    ToDoListItemView(item: item)
                        .swipeActions{
                            Button("Delete"){
                                viewModel.delete(id: item.id)
                            }
                            .background(Color.red)
                        }
                }
                .listStyle(PlainListStyle())
            })
            .navigationTitle("My List")
            .toolbar{
                Button(action: {
                    viewModel.showingNewItemView = true
                }, label: {
                    Image(systemName: "plus")
                })
            }
            .sheet(isPresented: $viewModel.showingNewItemView, content: {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            })
        })
    }
}

#Preview {
    ToDoListView(userId: "wWiVPKjrEmTkSsTnjnTa11SeAiF2")
}
