import SwiftUI

struct UserView: View {
    let id: String

    var body: some View {
        VStack {
            Image(systemName: "person")
            Text("User: \(id)")
        }
        .font(.title)
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView(id: "tsuzuki817")
    }
}
