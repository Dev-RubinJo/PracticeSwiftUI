//
//  SwiftUIView.swift
//  PraticeSwiftUI
//
//  Created by YooBin Jo on 2020/08/01.
//  Copyright © 2020 YooBin Jo. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .foregroundColor(.red)
                .padding()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SwiftUIView()
                .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
                .previewDisplayName("iPhone SE")
                .environment(\.colorScheme, .dark)
            SwiftUIView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
                .previewDisplayName("iPhone 11")
        }
    }
}
