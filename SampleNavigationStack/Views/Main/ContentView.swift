import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appEnvironment: AppEnvironment

    var body: some View {
        TabView(selection: appEnvironment.handler) {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(SelectedTab.home)
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
                .tag(SelectedTab.search)
            MyPageView()
                .tabItem {
                    Image(systemName: "person")
                    Text("MyPage")
                }
                .tag(SelectedTab.mypage)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

