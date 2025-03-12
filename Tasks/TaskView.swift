//
//  TaskView.swift
//  Tasks
//
//  Created by user on 12/03/25.
//

import SwiftUI

struct TaskView: View {
    let task: TaskModel

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(task.title)
                Text(task.date)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
            
            Button {
                task.isDone.toggle()
            } label: {
                Label {
                    Text("Checkbox")
                } icon: {
                    Image(systemName: task.isDone ? "checkmark.square.fill" : "square")
                }
                .labelStyle(.iconOnly)
            }
        }
    }
}

#Preview {
    TaskView(task: TaskModel(title: "Code", date: "Qua. 12 de mar.", isDone: true))
}
