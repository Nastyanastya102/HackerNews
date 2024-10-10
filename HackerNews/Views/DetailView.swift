
import SwiftUI

struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(url: url)
    }
}

#Preview {
    DetailView(url: "")
}

