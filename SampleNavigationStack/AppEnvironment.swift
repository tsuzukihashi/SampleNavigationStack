import SwiftUI

class AppEnvironment: ObservableObject {
    @Published var homePath: [Route] = []
    @Published var searchPath: [Route] = []
    @Published var myPagePath: [Route] = []

    @Published var selectedTab: SampleTab = .home

    var tabSelection: Binding<SampleTab> {
        Binding { [weak self] in
            self?.selectedTab ?? .home
        } set: { [weak self] newValue in
            self?.selectedTab = newValue
        }
    }

    func pop(to route: Route) {
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
