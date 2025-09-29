//
//  RemoveItemsTest.swift
//  RemoveItemsTest
//
//  Created by Uri on 29/9/25.
//

import Testing
@testable import SwiftTestingExample

struct RemoveItemsTest {

    @Test("Action for remove button lowers item count by 1")
    func viewModelRemoveLastRemovesLastElement() async throws {
        // Given
        let vm = ItemViewModel()
        let itemCount = vm.items.count
        let expectedItemCount = itemCount - 1
        
        // When
        vm.removeLast()
        
        // Then
        #expect(vm.items.count == expectedItemCount)
    }
    
    @Test("Remove button disabled when there are no items left")
    func removeDisabledWhenArrayIsEmpty() async throws {
        // Given
        let vm = ItemViewModel()
        #expect(vm.deleteDisabled == false)
        
        // When
        for _ in vm.items {
            vm.removeLast()
        }
        
        // Then
        #expect(vm.deleteDisabled == true)
    }
    
    @Test("Action for remove button returns if there are no items left")
    func viewModelRemoveLastReturnsWhenArrayIsEmpty() async throws {
        // Given
        let vm = ItemViewModel()
        vm.items = []
        
        // When
        vm.removeLast()
        
        // Then
        #expect(vm.items.isEmpty)
        
    }

}
