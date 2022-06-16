//
//  sandwichesApp.swift
//  Shared
//
//  Created by Nelson Toneze on 25/05/21.
//

import SwiftUI

@main
struct sandwichesApp: App {
    @StateObject private var store = SandwichStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
        }
    }
}
