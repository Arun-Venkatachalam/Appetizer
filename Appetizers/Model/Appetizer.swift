//
//  Appetizer.swift
//  Appetizers
//
//  Created by Arun Mariyaan on 16/3/2025.
//

import Foundation

struct Appetizer: Decodable, Identifiable, Hashable {
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
    
    static let orderItemOne = Appetizer(
        id: 0001,
        name: "Test Appetizer One",
        description: "This is the description for my appetizers. It's yummy.",
        imageURL: "",
        price: 99,
        carbs: 99,
        protein: 99,
        calories: 99
    )
    
    static let orderItemTwo = Appetizer(
        id: 0002,
        name: "Test Appetizer Two",
        description: "This is the description for my appetizers. It's yummy.",
        imageURL: "",
        price: 99,
        carbs: 99,
        protein: 99,
        calories: 99
    )
    
    static let orderItemThree = Appetizer(
        id: 0003,
        name: "Test Appetizer Three",
        description: "This is the description for my appetizers. It's yummy.",
        imageURL: "",
        price: 99,
        carbs: 99,
        protein: 99,
        calories: 99
    )
    
    static let orderAppetizers = [orderItemOne, orderItemTwo, orderItemThree]
}
