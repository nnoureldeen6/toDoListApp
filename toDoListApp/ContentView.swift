//
//  ContentView.swift
//  toDoListApp
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct ContentView: View {
    @State var toDoItem: [ToDoItem] = []
    @State private var showNewTask = false
    
    
    
    var body: some View {
        VStack {
            HStack{
                Text("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                Spacer()
                Button(action:  {                    self.showNewTask = true
                })  {
                    Text("+")
                    
                }
            }.padding()
            List {
                    ForEach (toDoItem) { toDoList in
                            Text(toDoList.title)
                        }
            }
        }
        
            
        
            if showNewTask {
                NewToDoView(title: "", isImportant: false)
            }
        
     
        }
        }


    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

