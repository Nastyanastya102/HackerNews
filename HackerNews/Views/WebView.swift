import WebKit
import Foundation
import SwiftUI

struct WebView: UIViewRepresentable {
    let webView: WKWebView
    let url: String?
    
    init(url: String?) {
        webView = WKWebView(frame: .zero)
        self.url = url
    }
    
    func makeUIView(context: Context) -> WKWebView {
        return webView
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeUrl = url {
            webView.load(URLRequest(url: URL(string: safeUrl)!))
        }
        else {
           print("File not found")
        }
    }
}
