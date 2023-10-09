import SwiftUI

struct HeaderView: View {
    var body: some View {
        Group {
            Divider()
            Text("Persistence Challenge")
                .frame(maxWidth: .infinity, alignment: .center)
                .font(.title)
            Divider()
        }
    }
}
