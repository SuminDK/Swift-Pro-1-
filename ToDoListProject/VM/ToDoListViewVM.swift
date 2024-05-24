//
//  ToDoListViewVM.swift
//  ToDoListProject
//
//  Created by Diana Kim on 5/20/24.
//

import FirebaseFirestore
import Foundation

// VM for list of items
// primary tab

class ToDoListViewViewModel: ObservableObject{
    
    @Published var showingNewItemView = false
    private let userId: String
    
    init (userId: String) {
        self.userId = userId
    }
    
    /// Delete todo list item
    /// - Parameter id: item id to delete
    func delete(id: String){
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
        
    }
}
