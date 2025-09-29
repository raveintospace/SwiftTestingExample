//
//  SwiftTestingExampleApp.swift
//  SwiftTestingExample
//  https://youtu.be/CsuUwdoVwyw?si=gd9FeAGsZiyoOAZD
//  Created by Uri on 29/9/25.
//

import SwiftUI

@main
struct SwiftTestingExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: ItemViewModel())
        }
    }
}
