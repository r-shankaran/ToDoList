//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Riya Shankaran on 7/28/25.
//

import SwiftUI

struct NewToDoView: View {
    var body: some View {
        VStack {
            Text("Task title:")
                .font(.title)
                .fontWeight(.medium)
            TextField("Enter the task description...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding()
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("Is this task important?")
                    .padding()
            }.padding()
            Button {
                
            } label: {
                Text("Save")
                    .font(.system(size: 19))
            }
        }
    }
}

#Preview {
    NewToDoView()
}
