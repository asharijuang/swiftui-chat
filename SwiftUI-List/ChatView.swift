//
//  ChatView.swift
//  SwiftUI-List
//
//  Created by asharijuang on 31/01/20.
//  Copyright © 2020 qiscus. All rights reserved.
//

import SwiftUI

struct Message : Identifiable {
    let id = UUID()
    let text : String
}

struct ChatView: View {
    
    @State var data = [Message(text: "Hi"), Message(text: "Ada yang bisa saya bantu")]
    @State var newMessage: String = ""
    var room : Room
    
    var body: some View {
        VStack {
            List {
                ForEach(data) { message in
                    HStack {
                        Image("avatar")
                            .padding(.all)
                            .aspectRatio(contentMode: ContentMode.fill)
                        VStack(alignment: .leading) {
                            Text("You")
                                .font(.headline)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                            Text(message.text)
                                .font(.body)
                                .foregroundColor(Color.gray)
                        }
                    }
                }
            }
        
            HStack {
                TextField("Kirim Pesan", text: $newMessage)
                Button(action: {
                    self.data.append(Message(text: self.newMessage))
                    self.newMessage = "Kirim Pesan"
                }) {
                    Text("Send")
                }
            }
        }
        .navigationBarTitle(room.name)
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(room: Room(name: "Test"))
    }
}
