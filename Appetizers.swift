//
//  Appetizers.swift
//  Appetizer
//
//  Created by Meet Balani on 25/04/24.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 0001, name: "Test Appetizer", description: "This is a description of an appetizer", price: 9.99, imageURL: "", calories: 99, protein: 99, carbs: 99)
    static let Appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
