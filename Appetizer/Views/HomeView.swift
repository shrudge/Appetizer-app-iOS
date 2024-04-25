//
//  HomeView.swift
//  Appetizer
//
//  Created by Meet Balani on 17/04/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            List(MockData.Appetizers) { appetizer in
                HStack{
                    Image("asian-flank-steak")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 90)
                        .cornerRadius(8)
                    VStack (alignment: .leading, spacing: 5  ){
                        Text(appetizer.name)
                            .font(.title2)
                            .fontWeight(.medium)
                        Text("$\(appetizer.price, specifier: "%.2f" )")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                    }.padding(.leading)
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Home")
        }
    }
}

#Preview {
    HomeView()
}
