//
//  ColorButton.swift
//  ColorPicker
//
//  Created by Favour on 3/16/24.
//

import SwiftUI

struct ColorButton: View {
    @Binding var redColor: Double
    @Binding var greenColor: Double
    @Binding var blueColor: Double
    @Binding var foregroundColor: Color
    var body: some View {
        Button("Set Color") {
            foregroundColor = Color(red: redColor / Double(ColorValues.Divider.maxNum), green: greenColor / Double(ColorValues.Divider.maxNum), blue: blueColor / Double(ColorValues.Divider.maxNum))
        }
        .background(        RoundedRectangle(cornerRadius: 15)
            .fill(.blue)
            .stroke(.white, lineWidth: CGFloat(2))
            .frame(width: 100, height: 50)
        )
        .foregroundStyle(.white)
        .bold()
        .padding(20)
        
        
    }
}

#Preview {
    ColorButton(redColor: Binding.constant(0.0), greenColor: Binding.constant(0.0), blueColor: Binding.constant(0.0), foregroundColor: Binding.constant(Color(red: 0, green: 1, blue: 0)))
}
