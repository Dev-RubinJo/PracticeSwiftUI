//
//  ContentView.swift
//  ProjectDemo
//
//  Created by YooBin Jo on 2021/01/02.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var demoData: DemoData
    
    var body: some View {
        Text("\(demoData.currentUser), you are user number \(demoData.userCount)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(demoData: DemoData())
        }
    }
}
