//
//  ItemModel.swift
//  SwiftTestingExample
//
//  Created by Uri on 29/9/25.
//

import Foundation

struct ItemModel: Identifiable {
    let id: UUID
    var name: String
    
    init(id: UUID = UUID(), name: String) {
        self.id = id
        self.name = name
    }
    
    static var examples: [ItemModel] {
        [
            ItemModel(name: "First"), ItemModel(name: "Second"), ItemModel(name: "Third")
        ]
    }
}
