//
//  LoadingView.swift
//  Appetizer
//
//  Created by Meet Balani on 14/06/24.
//

import SwiftUI
struct ActivityIndicator: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = UIColor(named: "Black")
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
}

struct LoadingView: View {
    var body: some View {
        ZStack {
           
            ActivityIndicator()
        }
    }
}

#Preview {
    ActivityIndicator()
}
