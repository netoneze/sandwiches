//
//  File.swift
//  sandwiches
//
//  Created by Nelson Toneze on 26/05/21.
//

import Foundation

class SandwichStore: ObservableObject {
    @Published var sandwiches: [Sandwich]
    
    init(sandwiches: [Sandwich] = []){
        self.sandwiches = sandwiches
    }
}

let testStore = SandwichStore(sandwiches: testData)
