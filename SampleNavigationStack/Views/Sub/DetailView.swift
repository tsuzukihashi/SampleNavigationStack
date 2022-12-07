import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack {
            Image(systemName: "note")
            Text("Detail View")
        }
        .font(.title)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
