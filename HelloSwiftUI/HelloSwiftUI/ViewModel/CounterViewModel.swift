//
//  CounterViewModel.swift
//  HelloSwiftUI
//
//  Created by YooBin Jo on 2020/12/21.
//

import SwiftUI

class CounterViewModel: ObservableObject {
    
    @Published private var counter: Counter = Counter()
    
    var value: Int {
        return counter.value
    }
    
    var premium: Bool {
        return counter.isPremium
    }
    
    func increment() {
        counter.increment()
    }
}
