//
//  DemoData.swift
//  ProjectDemo
//
//  Created by YooBin Jo on 2021/01/03.
//

import Foundation
import Combine

class DemoData: ObservableObject {
    
    @Published var userCount: Int = 0
    @Published var currentUser: String = ""
    
    init() {
        updateData()
    }
    
    func updateData() {
        
    }
}
