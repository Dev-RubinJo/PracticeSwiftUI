//
//  ContentView.swift
//  ProjectDemo
//
//  Created by YooBin Jo on 2021/01/02.
//

import SwiftUI

struct ContentView: View {
 
    @State private var wifiEnabled: Bool = true
    @State private var userName: String = ""
    
    var body: some View {
        VStack {
            Toggle(isOn: $wifiEnabled, label: {
                Text("Enable Wi-Fi")
            })
            
            TextField("Enter user name", text: $userName)
            Text(userName)
            WifiImageView(wifiEnabled: $wifiEnabled)
        }
    }
}

struct WifiImageView: View {
    
    @Binding var wifiEnabled: Bool
    
    var body: some View {
        Image(systemName: wifiEnabled ? "wifi" : "wifi.slash")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
