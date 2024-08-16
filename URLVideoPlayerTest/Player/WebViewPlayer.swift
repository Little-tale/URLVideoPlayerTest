//
//  WebViewPlayer.swift
//  URLVideoPlayerTest
//
//  Created by Jae hyung Kim on 8/16/24.
//

import SwiftUI
import WebKit

struct WebViewPlayer: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> some UIView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        let request = URLRequest(url: url)
        guard let view = uiView as? WKWebView else { return }
        view.load(request)
    }
}
