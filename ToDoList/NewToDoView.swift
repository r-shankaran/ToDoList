//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Riya Shankaran on 7/28/25.
//

import SwiftUI
import SwiftData

struct NewToDoView: View {
    @Binding var showNewTask: Bool
    @Bindable var toDoItem: ToDoItem
    @Environment(\.modelContext) var modelContext
    var body: some View {
        VStack {
            Text("Task title:")
                .font(.title)
                .fontWeight(.medium)
            TextField("Enter the task description...", text: $toDoItem.title, axis: .vertical)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding()
            Toggle(isOn: $toDoItem.isImportant) {
                Text("Is this task important?")
                    .padding()
            }.padding()
            Button {
                addToDo()
                showNewTask = false
            } label: {
                Text("Save")
                    .font(.system(size: 19))
            }
        }
    }
    
    func addToDo() {
        let toDo = ToDoItem(title: toDoItem.title, isImportant: toDoItem.isImportant)
        modelContext.insert(toDo)
    }
}

#Preview {
    NewToDoView(showNewTask: .constant(false), toDoItem: ToDoItem(title: "", isImportant: false))
}
