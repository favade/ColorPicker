import SwiftUI

struct SliderView: View {
    @Binding var color: Double
    let colorText: String
    let sliderColor: Color
    var body: some View {
        VStack {
            Text(colorText)
            HStack {
                Slider(value: $color, in: 0...Double(ColorValues.Divider.maxNum))
                    .tint(sliderColor)
                Text("\(Int(color.rounded()))")
                
            }
        }
    }
}

#Preview {
    SliderView(
        color: Binding.constant(0.0),
        colorText: "Red",
        sliderColor: Color.red
    )
}
