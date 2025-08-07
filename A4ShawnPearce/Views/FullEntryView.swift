//
//  FullEntryView.swift
//  A4ShawnPearce
//
//  Created by Shawn Pearce on 2025-07-26.
//

import SwiftUI

struct FullEntryView: View {
    let todo: Todo
    var body: some View {
        VStack{
            TodoListIcon(todo : todo, size: 250)
            TodoDetailsView(todo:todo)
            
        }
    }
}

#Preview {
    FullEntryView(todo : Todo.todoList[2])
}
