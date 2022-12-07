import SwiftUI

class AppEnvironment: ObservableObject {
    @Published var homePath: [Route] = []
    @Published var searchPath: [Route] = []
    @Published var myPagePath: [Route] = []

    @Published var selectedTab: SelectedTab = .home

    var handler: Binding<SelectedTab> {
        Binding { [weak self] in
            self?.selectedTab ?? .home
        } set: { [weak self] newValue in
            self?.selectedTab = newValue
        }
    }

    func popTo(route: Route) {
        switch selectedTab {
        case .home:
            homePath.removeAll(where: { $0 == route })
        case .search:
            searchPath.removeAll(where:  { $0 == route })
        case .mypage:
            myPagePath.removeAll(where:  { $0 == route })
        }
    }
}
