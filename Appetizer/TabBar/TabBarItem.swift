//
//  TabBarItem.swift
//  Appetizer
//
//  Created by Meet Balani on 17/04/24.
//
import Foundation
import SwiftUI

enum TabBarItem: Hashable {
    case home, profile, order
    
    var iconName: String {
        switch self {
        case .home: return "house"
        case .profile: return "person"
        case .order: return "bag"
        }
    }
    
    var title: String {
        switch self {
        case .home: return "Home"
        case .profile: return "Profile"
        case .order: return "Cart"
        }
    }
    
    var color: Color {
        switch self {
        case .home: return .blue
        case .profile: return .orange
        case .order: return .green
        }
    }
}
