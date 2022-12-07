import SwiftUI

struct DetailView: View {
    @EnvironmentObject var appEnvironment: AppEnvironment

    var body: some View {
        VStack {
            Image(systemName: "note")
            Text("Detail View")

            Text(appEnvironment.selectedTab.title + "からの遷移")

            Button {
                appEnvironment.popTo(route: .detail)
            } label: {
                Text("pop")
            }

        }
        .font(.title)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
