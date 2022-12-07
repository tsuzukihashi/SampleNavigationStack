import SwiftUI

class AppEnvironment: ObservableObject {
    @Published var homePath: [Route] = []
    @Published var searchPath: [Route] = []
    @Published var myPagePath: [Route] = []
}
