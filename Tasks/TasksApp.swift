//
//  TasksApp.swift
//  Tasks
//
//  Created by user on 12/03/25.
//

import SwiftUI

@main
struct TasksApp: App {
    var body: some Scene {
        WindowGroup {
            TaskView(task: TaskModel(title: "Code", date: "Qua. 12 de mar.", isDone: true))
        }
    }
}
