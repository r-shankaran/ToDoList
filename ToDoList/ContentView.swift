//
//  ContentView.swift
//  ToDoList
//
//  Created by Riya Shankaran on 7/28/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                Spacer()
                Button {
                    
                } label: {
                    Text("+")
                }
                .font(.system(size: 50))
                .fontWeight(.light)
                
            }.padding()
            Spacer()
            
        }
    }
}

#Preview {
    ContentView()
}
