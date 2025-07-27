//
//  ToDo.swift
//  A4ShawnPearce
//
//  Created by Shawn Pearce on 2025-07-26.
//

import Foundation

enum PriorityLevel {
    case critical
    case important
    case regular
}

struct Todo : Identifiable, Hashable {
    var id: Int
    var title: String
    var priorityLevel: PriorityLevel
    var deadLine: Date
    var description: String
}

extension Todo {
    
    static var todoList: [Todo] = [
        Todo(id:1, title:"Buy a lottery ticket", priorityLevel: .regular, deadLine: Date(),description: "Go to the store, buy a lotto 649 ticket and win millions so you can afford an appartment"),
        Todo(id: 2, title: "Get a hair cut", priorityLevel: .important, deadLine: Date(), description: "Call sal the barber, book an appointment and go get a hair cut so you look good"),
        Todo(id: 3, title: "Pay bills", priorityLevel: .critical, deadLine: Date(), description: "Pay all the bills, water, gas, internet, phone, etc.")
]
}
    
    
    
    

