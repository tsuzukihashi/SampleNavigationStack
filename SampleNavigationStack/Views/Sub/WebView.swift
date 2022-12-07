import SwiftUI

struct WebView: View {
    let url: URL

    var body: some View {
        VStack {
            Text("URL: \(url.absoluteString)")
            Link("Link", destination: url)
        }
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(url: URL(string: "https://google.com")!)
    }
}
