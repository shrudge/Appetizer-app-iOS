//
//  NetworkManager.swift
//  Appetizer
//
//  Created by Meet Balani on 30/04/24.
//

import Foundation

final class NetworkManager {
    static let shared = NetworkManager()
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    static let appetizersURL = baseURL + "appetizers"
    
    private init() {}
    
    func getAppetizers(completed: @escaping (Result<[Appetizer], Error>) -> Void) {
        
    }
}
 
