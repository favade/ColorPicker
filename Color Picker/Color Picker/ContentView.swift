//
//  ContentView.swift
//  Color Picker
//
//  Created by Favour on 3/4/24.
//

import SwiftUI

struct InitialColor {
    let red = 98.0
    let green = 75.0
    let blue = 34.0
}

struct ContentView: View {
    @State var red: Double = InitialColor().red
    @State var green: Double = InitialColor().green
    @State var blue: Double = InitialColor().blue
    @State var finalColor: Color = Color(red: InitialColor().red / 255 , green: InitialColor().green / 255, blue: InitialColor().blue / 255)
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

