//
//  LoadingView.swift
//  appetizerAPP
//
//  Created by Miguel Angel Bohorquez on 21/10/25.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = UIColor.brandPrimary
        activityIndicatorView.startAnimating()
        return activityIndicatorView
        
        
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        
    }

}

struct LoadingView: View {
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea(.all)
            
            ActivityIndicator()
        }
    }
}
