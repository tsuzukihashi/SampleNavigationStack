import SwiftUI

@main
struct MainApp: App {
    @ObservedObject var appEnvironment: AppEnvironment = .init()

    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(appEnvironment)
        }
    }
}
