//
//  ContentView.swift
//  Appetizer
//
//  Created by Meet Balani on 17/04/24.
//

import SwiftUI

//struct MainView: View {
//    var body: some View {
//        TabView {
//            HomeView()
//                .tabItem {
//                Label("Home", systemImage: "house")
//                }
//            AccountView()
//                .tabItem {
//                Label("Account", systemImage: "person")
//                }
//            OrderView()
//                .tabItem {
//                Label("Cart", systemImage: "cart")
//                }
//        }.accentColor(Color(.red))
//    }
//}
struct ContentView: View {
    @State private var tabSelection: TabBarItem = .home
    
    var body: some View {
        TabBarContainer(selection: $tabSelection) {
            HomeView()
                .tabBarItem(tab: .home,
                            selection: $tabSelection)
            
            AccountView()
                .tabBarItem(tab: .profile,
                            selection: $tabSelection)
            
            OrderView()
                .tabBarItem(tab: .order,
                            selection: $tabSelection)
            
        }
    }
}

#Preview {
    ContentView()
}
