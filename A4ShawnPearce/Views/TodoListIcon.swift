//
//  TodoListIcon.swift
//  A4ShawnPearce
//
//  Created by Shawn Pearce on 2025-07-26.
//

import SwiftUI

struct TodoListIcon: View {
    let todo : Todo
    let size : CGFloat
    
    var body: some View {
        
        Image("\(todo.priorityLevel)")
            .resizable()
            .frame(width: size, height: size)
        
    }
}
#Preview {
    TodoListIcon(todo:Todo.todoList[0],size:250)
}

