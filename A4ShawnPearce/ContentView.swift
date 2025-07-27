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
            
            Spacer()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text("Test")
                .multilineTextAlignment(.center)
            
            
            
            
            
            
            
            
            
            
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
