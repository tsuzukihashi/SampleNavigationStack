import SwiftUI

struct SearchView: View {
    @EnvironmentObject var appEnvironment: AppEnvironment
    
    var body: some View {
        VStack {
            NavigationLink(value: Route.detail) {
                Text("Detail View")
            }
        }
        .navigationTitle("Search")
        .navigation(path: $appEnvironment.searchPath)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
