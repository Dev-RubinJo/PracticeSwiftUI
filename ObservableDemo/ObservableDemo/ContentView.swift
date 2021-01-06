//
//  ContentView.swift
//  ObservableDemo
//
//  Created by YooBin Jo on 2021/01/05.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var timerData: TimerData
//    @EnvironmentObject var timerData2: TimerData
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Timer count = \(timerData.timeCount)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                Button(action: resetCount) {
                    Text("Reset Count")
                }
                
                NavigationLink(
                    destination: SecondView()) {
                        Text("Next Screen")
                            .foregroundColor(.black)
                    }
                    .padding()
            }
        }
    }
    
    func resetCount() {
        timerData.resetCount()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(TimerData())
    }
}
