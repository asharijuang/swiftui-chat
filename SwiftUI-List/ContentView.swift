    //
//  ContentView.swift
//  SwiftUI-List
//
//  Created by asharijuang on 31/01/20.
//  Copyright © 2020 qiscus. All rights reserved.
//

import SwiftUI
    
struct Room : Identifiable{
    let id = UUID()
    var name: String
    let createdAt = Date()
}

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            HomeView()
            .navigationBarTitle("Conversation")
                .navigationBarItems(trailing: Button(action: {
                    //
                }, label: {
                    Text("Add")
                }))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
