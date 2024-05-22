//
//  ToDoListItemView.swift
//  ToDoListProject
//
//  Created by Diana Kim on 5/20/24.
//

import SwiftUI

struct ToDoListItemView: View {
    @StateObject var viewModel = ProfilViewViewModel()
    let item: ToDoListItem
    
    
    var body: some View {
        HStack(content: {
            VStack(alignment: .leading,content: {
                Text(item.title)
                    .font(.title2)
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundColor(Color(.secondaryLabel))
            })
            
            Spacer()
            
            Button(action: {
                viewModel.toggleIsDone(item: item)
                
            }, label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
            })
        })
    }
}

#Preview {
    ToDoListItemView(item: .init(id: "123", title: "Get Milk", dueDate: Date().timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: true))
}
