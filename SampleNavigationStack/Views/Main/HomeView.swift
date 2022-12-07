import SwiftUI

struct HomeView: View {
    @EnvironmentObject var appEnvironment: AppEnvironment
    
    var body: some View {
        List {
            NavigationLink(value: Route.detail) {
                Text("Detail View")
            }
            NavigationLink(value: Route.user(id: "tsuzuki817")) {
                Text("User View")
            }
            NavigationLink(value: Route.web(url: URL(string: "https://google.com")!)) {
                Text("Web View")
            }
            Button {
                appEnvironment.homePath.append(.detail)
            } label: {
                Text("Button Navigation")
            }
        }
        .navigationTitle("Home")
        .navigation(path: $appEnvironment.homePath)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

