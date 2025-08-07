//
//  ContentView.swift
//  A4ShawnPearce
//
//  Created by Shawn Pearce on 2025-07-26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isLight = true
    
    let todo : [Todo]
    
    var body: some View {
        VStack{
            NavigationStack{
                List{
                    ForEach(todo){todo in
                        NavigationLink(value:todo){
                            HStack{
                                TodoListIcon(todo: todo, size :50)
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
            Toggle("LightMode/DarkMode", isOn:$isLight)
                .toggleStyle(.button)
            
            }
        
        .frame(maxWidth:.infinity, maxHeight:.infinity)
        .foregroundStyle(.regText)
        .background(.regBg)
        .preferredColorScheme(isLight ? .light : .dark)
        
    }
}

#Preview {
    ContentView(todo : Todo.todoList)
}
