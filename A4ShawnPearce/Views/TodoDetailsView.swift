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
        Text(Todo.dateFormatter.string(from: todo.deadLine))
        Text(todo.description).multilineTextAlignment(.center)
    }
}

#Preview {
    TodoDetailsView(todo : Todo.todoList[0])
}
