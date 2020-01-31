//
//  HomeView.swift
//  SwiftUI-List
//
//  Created by asharijuang on 31/01/20.
//  Copyright © 2020 qiscus. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var rooms : [Room] = [Room(name: "Qiscus Office"), Room(name: "Other Office"), Room(name: "Client Enterprise")]
    
    
    var body: some View {
        // Similar with Table View
        List {
            ForEach(rooms) { room in
                NavigationLink(destination: ChatView(room: room)) {
                    HStack {
                        Image("avatar")
                        Text(room.name)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
