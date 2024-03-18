//
//  WebView.swift
//  H4X0R News
//
//  Created by George on 18.03.24.
//

import Foundation
import WebKit
import SwiftUI


struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let urlString = urlString, let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
}
