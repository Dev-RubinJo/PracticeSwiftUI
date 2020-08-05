//
//  SwiftUIView.swift
//  PraticeSwiftUI
//
//  Created by YooBin Jo on 2020/08/01.
//  Copyright © 2020 YooBin Jo. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
    
    let carStack: HStack = HStack {
        Text("Car Image")
            .foregroundColor(.black)
        Image(systemName: "car.fill")
    }
    var body: some View {
        VStack {
            VStack {
                Text("Title Message")
                    .font(.custom("Copperplate", size: 70.0))
                    .foregroundColor(.black)
                Text("Text 2")
                    .padding()
                    .modifier(StandardTitle())
                //                    .border(Color.black)
                //                    .font(.title)
                //                    .foregroundColor(.black)
                //                    .shadow(color: .gray, radius: 5, x: 0, y: 10)
                
                HStack {
                    Text("Text 1")
                        .foregroundColor(.black)
                    Text("Text 2")
                        .foregroundColor(.black)
                }
                .padding()
                
                
                MyHStackView()
                    .font(.largeTitle)
                self.carStack
            }
            Text("Text 5")
                .font(.headline)
                .foregroundColor(.black)
                .onAppear()
                .onDisappear()
            Button(action: {print("hello")}) {
                Image(systemName: "square.and.arrow.down")
            }
        }
        //        VStack {
        //            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        //                .font(.largeTitle)
        //                .foregroundColor(.red)
        //                .padding()
        //            Button(action: {}) {
        //                Text(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/)
        //            }
        //        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SwiftUIView()
                .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
                .previewDisplayName("iPhone SE")
                .environment(\.colorScheme, .dark)
        }
        
    }
}

struct StandardTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
            .background(Color.white)
            .border(Color.gray, width: 0.2)
            .shadow(color: .black, radius: 5, x: 0, y: 5)
    }
}

struct MyHStackView: View {
    var body: some View {
        HStack {
            Text("Text 3")
                .foregroundColor(.blue)
            Text("Text 4")
                .foregroundColor(.blue)
            Image(systemName: "car.fill")
                .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
        }
    }
}
