//
//  ListTaskView.swift
//  Tasks
//
//  Created by user on 13/03/25.
//

import SwiftUI

struct ListTaskView: View {
    @State var tasks: [TaskModel] = [
        TaskModel(
            title:
                "ToDo 01",
            date: Date()),
        TaskModel(
            title:
                "ToDo 02",
            date: Date()),
        TaskModel(
            title:
                "ToDo 03",
            date: Date()),
        TaskModel(
            title:
                "ToDo 04",
            date: Date()),
        TaskModel(
            title:
                "ToDo 05",
            date: Date()),
    ]

    @State var nameTask: String = ""
    @State var dateTask: Date = Date()

    @State var addTask: Bool =
        false

    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(
                        tasks
                    ) {
                        task
                        in
                        TaskView(
                            task:
                                task
                        )
                        .swipeActions {
                            Button(
                                role:
                                    .destructive
                            ) {
                                tasks
                                    .removeAll {
                                        currentTask
                                        in
                                        currentTask
                                            .id
                                            == task
                                            .id
                                    }
                            } label: {
                                Label {
                                    Text(
                                        "Delete"
                                    )
                                } icon: {
                                    Image(
                                        systemName:
                                            "trash"
                                    )
                                }
                            }
                        }
                    }
                } header: {
                    Text(
                        "Todo"
                    )
                } footer: {
                    Text(
                        "TOTAL: \(tasks.count)"
                    )
                }
            }
            .listStyle(
                .sidebar
            )
            .sheet(
                isPresented:
                    $addTask
            ) {
                AddTaskView(tasks: $tasks)
            }
            .toolbar {
                ToolbarItem(
                    placement:
                        .confirmationAction
                ) {
                    Button {
                        self
                            .addTask
                            .toggle()
                        print(
                            addTask
                        )
                    } label: {
                        Label {
                            Text(
                                "Add Task"
                            )
                        } icon: {
                            Image(
                                systemName:
                                    "plus"
                            )
                        }
                    }
                }
            }
            .navigationTitle("Task List")
        }
    }
}

#Preview {
    ListTaskView()
}
//Section {
//    TextField("Name", text: $nameTask)
//    DatePicker("Date", selection: $dateTask)
//
//    Button {
//        tasks.append(TaskModel(title: nameTask, date: dateTask))
//        addTask.toggle()
//    } label: {
//        Label {
//            Text("Add Task")
//        } icon: {
//            Image(systemName: "plus")
//        }
//    }
//}
