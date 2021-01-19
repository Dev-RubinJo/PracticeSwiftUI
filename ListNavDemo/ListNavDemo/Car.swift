//
//  Car.swift
//  ListNavDemo
//
//  Created by YooBin Jo on 2021/01/19.
//

import SwiftUI

struct Car: Codable, Identifiable {
    var id: String
    var name: String
    var description: String
    var isHybrid: Bool
    var imageName: String
}
