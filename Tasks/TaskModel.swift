//
//  TaskModel.swift
//  Tasks
//
//  Created by user on 12/03/25.
//

import Foundation

@Observable
class TaskModel {
    let title: String
    let date: String
    var isDone: Bool
    
    init(title: String, date: String, isDone: Bool) {
        self.title = title
        self.date = date
        self.isDone = isDone
    }
}
