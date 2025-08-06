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
        
        var dateFormatter: DateFormatter {
            let formatter = DateFormatter()
            formatter.dateStyle = .medium
            formatter.timeStyle = .short
            return formatter
        }
                    Text(todo.title)
                    Text(dateFormatter.string(from: todo.deadLine))
        Text(todo.description).multilineTextAlignment(.center)
    }
}

#Preview {
    TodoDetailsView(todo : Todo.todoList[0])
}
