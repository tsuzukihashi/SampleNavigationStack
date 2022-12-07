import SwiftUI

struct RootView: View {
    @EnvironmentObject var appEnvironment: AppEnvironment

    var body: some View {
        TabView(selection: appEnvironment.tabSelection) {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(SampleTab.home)
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
                .tag(SampleTab.search)
            MyPageView()
                .tabItem {
                    Image(systemName: "person")
                    Text("MyPage")
                }
                .tag(SampleTab.mypage)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}

