import SwiftUI

struct NavigationModifier: ViewModifier {
    @Binding var path: [Route]

    @ViewBuilder
    fileprivate func coordinator(_ route: Route) -> some View {
        switch route {
        case .detail:
            DetailView()
        case .user(let id):
            UserView(id: id)
        case .web(let url):
            WebView(url: url)
        }
    }

    func body(content: Content) -> some View {
        NavigationStack(path: $path) {
            content
                .navigationDestination(for: Route.self) { route in
                    coordinator(route)
                }
        }
    }
}

extension View {
    func navigation(path: Binding<[Route]>) -> some View {
        self.modifier(NavigationModifier(path: path))
    }
}
