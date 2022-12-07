import SwiftUI

struct MyPageView: View {
    @EnvironmentObject var appEnvironment: AppEnvironment

    var body: some View {
        VStack {
            NavigationLink(value: Route.detail) {
                Text("Detail View")
            }
        }
        .navigationTitle("MyPage")
        .navigation(path: $appEnvironment.myPagePath)
    }
}

struct MyPageView_Previews: PreviewProvider {
    static var previews: some View {
        MyPageView()
    }
}
