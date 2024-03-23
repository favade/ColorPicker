import SwiftUI

struct TitleText: View {
    let title: String
    var body: some View {
        Text(title)
            .font(.largeTitle)
            .bold()
    }
}

#Preview {
    TitleText(title: "Color Picker")
}
