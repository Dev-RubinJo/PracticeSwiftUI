//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by YooBin Jo on 2020/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var counterViewModel: CounterViewModel
    
    init() {
        counterViewModel = CounterViewModel()
    }
    
    var body: some View {
        VStack {
            Text(counterViewModel.premium ? "PREMIUM" : "")
                .foregroundColor(.green)
                .frame(width: 200, height: 100)
                .font(.largeTitle)
            
            Text("\(counterViewModel.value)")
                .font(.title)
            Button("Increment") {
                counterViewModel.increment()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
