//
//  ContentView.swift
//  A4ShawnPearce
//
//  Created by Shawn Pearce on 2025-07-26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isLight = true
    
    let todos : [Todo]
    
    var body: some View {
        VStack{
            NavigationStack{
                List{
                    ForEach(todos){todo in
                        NavigationLink(value:todo){
                            HStack{
                                TodoListIcon(todo: todo, size :50)
                                //Display the text as red if the deadline has passed
                                VStack(alignment: .leading){
                                    Text(todo.title)
                                        .foregroundColor(todo.deadLine < Date() ? .red : .primary)
                                    Text("Deadline: \(Todo.dateFormatter.string(from: todo.deadLine))")
                                        .foregroundColor(todo.deadLine < Date() ? .red : .secondary)

                                }
                            }
                        }
                    }
                }
                .navigationTitle("Todo List")
                .navigationDestination(for:Todo.self){todo in FullEntryView(todo:todo)}
            }
            Spacer()
            Toggle("Light/DarkMode", isOn:$isLight)
                .toggleStyle(.button)
            
            }
        
        .frame(maxWidth:.infinity, maxHeight:.infinity)
        .foregroundStyle(.regText)//defined in assets
        .background(.regBg)//defined in assets
        .preferredColorScheme(isLight ? .light : .dark)
        
    }
}

#Preview {
    ContentView(todos : Todo.todoList)
}
