//
//  ContentView.swift
//  Rainbow
//
//  Created by Paula Mora Romero on 14/10/25.
//

import SwiftUI

struct ContentView: View {
    
    //VARIABLES
    @State private var showAnimation: Bool = false //to start off
    @State private var textSize = 16.0
    @State private var text = "Hello Academy"
    
    var body: some View {
        VStack {
            Toggle(isOn:$showAnimation) {
                Text("Show Animation")
            }
            
            Spacer()
            
            Image(systemName: "rainbow")
                .font(.system(size: 150))
                .symbolRenderingMode(.multicolor)
                .symbolEffect(.variableColor.reversing, isActive: showAnimation) //isActive to control whether it's on or off
            
            Text(text) //afegim la variable
                .font(.system(size: textSize)) //enlloc de posar 16, cridem la variable declarada
            
            Spacer()
            
            Slider(value: $textSize, in: 16...40) //$ pq llegeix + modifica
            
            Button {
                text = "Hello Paula!"
            } label: {
                Text("Change Text")
            }
            .controlSize(.large)
            .buttonStyle(.glassProminent) //liquid glass
            .padding()
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
