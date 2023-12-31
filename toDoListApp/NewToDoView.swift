//
//  NewToDoView.swift
//  toDoListApp
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct NewToDoView: View {
    @State var title: String
    @State var isImportant: Bool
    @Binding var toDoItems: [ToDoItem]
    
    var body: some View {
        
        VStack {
            Text("Task Title:")
                .font(.largeTitle)
            TextField("Enter the Task Description...", text: $title)
            
            
            Toggle(isOn:
                    $isImportant){
                Text("Is it Important?")
                Button(action: {
                  
                }) {
                    Text("Add")
                
                }.padding()
                
                
            }.padding()
        
        }
    }
    
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "",
                    isImportant: false, toDoItems: .constant([]))
    }
}
