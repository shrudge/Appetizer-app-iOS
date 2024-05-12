//
//  HomeView.swift
//  Appetizer
//
//  Created by Meet Balani on 17/04/24.
//

import SwiftUI

struct HomeView: View {
    @State private var appetizers: [Appetizer] = []
    var body: some View {
        NavigationView {
            List(appetizers ) { appetizer in
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
        .onAppear {
            getappetizers()
        }
    }
    func getappetizers() {
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
