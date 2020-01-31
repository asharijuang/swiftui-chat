//
//  TutorialView.swift
//  SwiftUI-List
//
//  Created by asharijuang on 31/01/20.
//  Copyright © 2020 qiscus. All rights reserved.
//

import SwiftUI

struct TutorialView: View {
    
    let rTarget : Double = Double.random(in: 0..<1)
    let gTarget : Double = Double.random(in: 0..<1)
    let bTarget : Double = Double.random(in: 0..<1)
    
    @State var rGuest:Double
    @State var gGuest:Double
    @State var bGuest:Double
    
    @State private var numberClick : Int = 0
    
    @State var name: String = ""
    
    var body: some View {
        VStack {
            HStack{
                Form {
                    Text("Color 1")
                    Text("Color 2")
                    Section {
                        Text("Color A")
                        Text("Color B")
                    }
                    Button("click \(numberClick)") {
                        self.numberClick += 1
                    }
                }
                Form {
                    TextField("Input your name", text: $name)
                    Text("Your name is \(name)")
                }
            }
            
            Text("Hello...")
            
            VStack {
                Form {
                    ForEach(0 ..< 5) { number in
                        Text("Number \(number)")
                    }
                }
              HStack {
                Text("R: xxx")
                Text("G: xxx")
                Text("B: xxx")
              }
            }
        }
    }
}

#if DEBUG
struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView(rGuest: 0.5, gGuest: 0.5, bGuest: 0.5)
    }
}
#endif
