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
    
    @Binding var clickedURL: URL?
    
    func makeUIView(context: Context) -> some UIView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        let request = URLRequest(url: url)
        guard let view = uiView as? WKWebView else { return }
        view.load(request)
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(self)
    }
    
    
    class Coordinator: NSObject, WKNavigationDelegate {
        let parent: WebViewPlayer
        
        init(_ parent: WebViewPlayer) {
            self.parent = parent
        }
        
        // 변경된 URL 감지
        func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
            if let url = navigationAction.request.url {
                parent.clickedURL = url
            }
            decisionHandler(.allow)
        }
    }
}
