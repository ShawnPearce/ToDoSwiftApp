//
//  TodoDetailsView.swift
//  A4ShawnPearce
//
//  Created by Shawn Pearce on 2025-07-26.
//

import SwiftUI

struct TodoDetailsView: View {
   
    let todo: Todo
    var body: some View {
        Text(todo.title)
            .font(.headline)
   
            Text("by")
            .font(.headline)
            
                .padding(.bottom, 10)
            
            Text(Todo.dateFormatter.string(from: todo.deadLine))
                .bold()
                .padding(.bottom, 10)
        VStack{
            
            Text("Prioirty: \(todo.priorityLevel)")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(10)
            Text("Description:  \(todo.description)")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(10)
        }
        .multilineTextAlignment(.leading)
        //Calculation to see how many days and hours until / since using absolute value
        let components = Calendar.current.dateComponents([.day,.hour], from:Date(),to:todo.deadLine)
        let days = abs(components.day ?? 0)
        let hours = abs(components.hour ?? 0)
        
        if todo.deadLine > Date(){
            Text("Time remaining: \(days) days, \(hours) hours")
        }else{
            Text("Already late by: \(days) days, \(hours) hours")
                .foregroundColor(.red)
            Spacer()
        }
    }
}
#Preview {
    TodoDetailsView(todo : Todo.todoList[0])
}
