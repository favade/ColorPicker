import SwiftUI

struct ColorButton: View {
    let redColor: Double
    let greenColor: Double
    let blueColor: Double
    @Binding var foregroundColor: Color
    var body: some View {
        Button("Set Color") {
            foregroundColor = Color(
                red: redColor / ColorValues.Divider.maxNum,
                green: greenColor / ColorValues.Divider.maxNum,
                blue: blueColor / ColorValues.Divider.maxNum
            )
        }
        .background(RoundedRectangle(cornerRadius: 15)
            .fill(.blue)
            .stroke(.white, lineWidth: CGFloat(2))
            .frame(width: 100, height: 50)
        )
        .foregroundStyle(.white)
        .bold()
    }
}

#Preview {
    ColorButton(
        redColor: 0.0,
        greenColor: 0.0,
        blueColor: 0.0,
        foregroundColor: Binding.constant(Color(red: 0,green: 1, blue: 0))
    )
}
