import Foundation

enum Route: Hashable {
    case detail
    case user(id: String)
    case web(url: URL)
}
