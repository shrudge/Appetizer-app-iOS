//
//  AppetizerViewModel.swift
//  Appetizer
//
//  Created by Meet Balani on 15/05/24.
//

import SwiftUI

final class AppetizerModelView: ObservableObject {
    @Published var appetizers: [Appetizer] = []
    @State var alertItem: AlertItem?
    @Published var isLoading = false
    
    func getappetizers() {
        isLoading = true
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async { [self] in
                isLoading = false
                switch result {
                    
                case .success(let appetizers):
                    self.appetizers = appetizers
                    
                case .failure(let error):
                    
                    switch error {
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                        
                    case .invalidUrl:
                        alertItem = AlertContext.invalidURL
                        
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                        
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}

