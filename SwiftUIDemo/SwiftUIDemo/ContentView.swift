//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by YooBin Jo on 2021/01/05.
//

import SwiftUI

struct ContentView: View {
    
    var colors: [Color] = [.black, .red, .green, .blue]
    var colorNames = ["Black", "Red", "Green", "Blue"]
    
    @State private var colorIndex = 0
    @State private var rotation: Double = 0
    @State private var text: String = "Welcome to SwiftUI"
    
    var body: some View {
        VStack {
            VStack {
                Spacer()
                Text(text)
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .fontWeight(.heavy)
                    .rotationEffect(.degrees(rotation))
                    .animation(.easeInOut(duration: 5))
                    .foregroundColor(colors[colorIndex])
                
                Spacer()
                Divider()
                Slider(value: $rotation, in: 0 ... 360, step: 0.1)
                    .padding()
                
                TextField("Enter text here", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Picker(selection: $colorIndex, label: Text("Color")) {
                    ForEach (0 ..< colorNames.count) {
                        Text(colorNames[$0])
                            .foregroundColor(colors[$0])
                    }
                    .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
