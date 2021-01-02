//
//  ContentView.swift
//  ProjectDemo
//
//  Created by YooBin Jo on 2021/01/02.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        MyVStack {
            Text("Text 1")
            Text("Text 1")
            HStack {
                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                Image(systemName: "star")
            }
        }
    }
}

struct MyVStack<Content: View>: View {
    let content: () -> Content
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    var body: some View {
        VStack(spacing: 10) {
            content()
        }
        .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
