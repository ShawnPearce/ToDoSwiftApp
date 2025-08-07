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
        
        //see documentation https://developer.apple.com/documentation/foundation/calendar
        let components = Calendar.current.dateComponents([.day,.hour], from:Date(),to:todo.deadLine)
        let days = abs(components.day ?? 0)
        let hours = abs(components.hour ?? 0)
        
        VStack{
            Text(todo.title)
                .font(.headline)
            
            Text("by")
                .font(.headline)
                .padding(.bottom, 5)
            
            Text(Todo.dateFormatter.string(from: todo.deadLine))
                .bold()
                .padding(.bottom, 20)
            
            
            Text("Priority: \(todo.priorityLevel)")
                .font(.system(size: 20))
                .padding(.leading)
                .padding(.bottom, 5)
                .frame(maxWidth: .infinity, alignment: .leading)
            

            Text("Description:  \(todo.description)")
                .font(.system(size: 20))
                .padding(.leading)
                .padding(.bottom, 5)
                .frame(maxWidth: .infinity, alignment: .leading)

            
            if todo.deadLine > Date(){
                Text("Time remaining: \(days) days, \(hours) hours")
                    .font(.system(size: 20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                    .padding(.bottom, 10)


            }else{
                Text("Already late by: \(days) days, \(hours) hours")
                    .font(.system(size: 20))
                    .foregroundColor(.red)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)


             
            }
            
        }
        
    }
}
#Preview {
    TodoDetailsView(todo : Todo.todoList[0])
}
