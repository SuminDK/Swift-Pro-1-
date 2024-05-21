//
//  ToDoListProjectApp.swift
//  ToDoListProject
//
//  Created by Diana Kim on 5/20/24.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListProjectApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
