//
//  ItemViewModel.swift
//  SwiftTestingExample
//
//  Created by Uri on 29/9/25.
//

import Foundation
import Combine


final class ItemViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = ItemModel.examples
    @Published var deleteDisabled = false
    
    func removeLast() {
        guard !items.isEmpty else { return }
        items.removeLast()
        deleteDisabled = items.isEmpty
    }
}
