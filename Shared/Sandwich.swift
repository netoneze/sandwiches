//
//  Sandwich.swift
//  sandwiches
//
//  Created by Nelson Toneze on 25/05/21.
//

import Foundation

struct Sandwich: Identifiable {
    var id = UUID();
    var name: String;
    var ingredientCount: Int;
    var isSpicy: Bool = false;
    
    var imageName: String { return name };
    var thumbnailName: String { return name + "-Thumbnail"};
}

let testData = [
    Sandwich(name: "X-Salada", ingredientCount: 3, isSpicy: false),
    Sandwich(name: "X-Burger", ingredientCount: 4, isSpicy: false),
    Sandwich(name: "X-Bacon", ingredientCount: 4, isSpicy: false),
    Sandwich(name: "X-Vegetariano", ingredientCount: 4, isSpicy: false),
    Sandwich(name: "X-Nelson", ingredientCount: 5, isSpicy: true),
    Sandwich(name: "X-Calabresa", ingredientCount: 4, isSpicy: true),
    Sandwich(name: "X-Ovo", ingredientCount: 3, isSpicy: false),
    Sandwich(name: "X-Tudo", ingredientCount: 7, isSpicy: true),
    Sandwich(name: "X-Família", ingredientCount: 8, isSpicy: false),
    Sandwich(name: "X-Pernil", ingredientCount: 4, isSpicy: false),
    Sandwich(name: "X-Fraldinha", ingredientCount: 4, isSpicy: false),
]
