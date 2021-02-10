//
//  WebView.swift
//  H4XOR News
//
//  Created by Darshil Agrawal on 01/08/20.
//  Copyright © 2020 Darshil Agrawal. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit

struct WebView :UIViewRepresentable {
    
    let urlString:String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString=urlString{
            if let url=URL(string: safeString){
                let request=URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
