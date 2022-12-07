import Foundation

enum Route: Hashable, Equatable {
    case detail
    case user(id: String)
    case web(url: URL)
}

enum SampleTab: Hashable {
    case home
    case search
    case mypage

    var title: String {
        switch self {
        case .home:
            return "Home"
        case .search:
            return "Search"
        case .mypage:
            return "MyPage"
        }
    }
}
