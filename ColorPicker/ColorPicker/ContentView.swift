//
//  ContentView.swift
//  ColorPicker
//
//  Created by Favour on 3/13/24.
//

import SwiftUI

enum InitialColorValues {
    static let red = 98.0
    static let green = 75.0
    static let blue = 34.0
}

struct ContentView: View {
    @State var red = InitialColorValues.red
    @State var green = InitialColorValues.green
    @State var blue = InitialColorValues.blue
    @State var finalColor = Color(
        red: InitialColorValues.red / 255,
        green: InitialColorValues.green / 255,
        blue: InitialColorValues.blue / 255
    )
    var body: some View {
        VStack {
            Text("Color Picker")
                .font(.title)
            RoundedRectangle(cornerRadius: 0)
                .fill(finalColor)
            ColorSlider(colorValue: $red, colorText: "Red")
            ColorSlider(colorValue: $green, colorText: "Green")
            ColorSlider(colorValue: $blue, colorText: "Blue")
        }.padding()
        Button("Set Color") {
            finalColor = Color(red: red / 255, green: green / 255, blue: blue / 255)
        }
    }
    
}

struct ColorSlider: View {
    @Binding var colorValue: Double
    let colorText: String
    var body: some View {
        VStack {
            Text(colorText)
            Slider(
                value: $colorValue,
                in: 0...255
            ) {
                
            } minimumValueLabel: {
                Text("")
            } maximumValueLabel: {
                Text("\(Int(colorValue))")
            }
        }
    }
}




#Preview {
    ContentView()
}
