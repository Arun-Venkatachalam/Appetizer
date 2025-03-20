//
//  Appetizer.swift
//  Appetizers
//
//  Created by Arun Mariyaan on 16/3/2025.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let imageURL: String
    let price: Double
    let carbs: Int
    let protein: Int
    let calories: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    
    static let sampleAppetizer = Appetizer(
        id: 0001,
        name: "Test Appetizer",
        description: "This is the description for my appetizers. It's yummy.",
        imageURL: "",
        price: 99,
        carbs: 99,
        protein: 99,
        calories: 99
    )
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
