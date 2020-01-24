//
//  ItemRow.swift
//  PraticeSwiftUI
//
//  Created by YooBin Jo on 2020/01/24.
//  Copyright © 2020 YooBin Jo. All rights reserved.
//

import SwiftUI

struct ItemRow: View {
    var item: MenuItem
    
    var body: some View {
        HStack {
            Image(item.thumbnailImage)
            Text(item.name)
            Text("$\(item.price)")
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: MenuItem.example)
    }
}
