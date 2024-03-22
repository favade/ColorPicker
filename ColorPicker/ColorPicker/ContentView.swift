
//
//  ContentView.swift
//  ColorPicker
//
//  Created by Favour on 3/13/24.
//

import SwiftUI



struct ContentView: View {
    @State private var alertIsVisible: Bool = false
    @State private var redColor: Double = ColorValues.Initial.InitialColor
    @State private var greenColor: Double = ColorValues.Initial.InitialColor
    @State private var blueColor: Double = ColorValues.Initial.InitialColor
    @State private var foregroundColor = Color(red: 0, green: 1, blue: 0)
    var body: some View {
        ZStack {
            Color("BackgroundColor").ignoresSafeArea()
            VStack {
                TitleText(title: "Color Picker")
                RoundedRectangle(cornerRadius: 0)
                    .foregroundStyle(foregroundColor)
                    .border(.black.opacity(0.1), width: 10)
                SliderView(color: $redColor, colorText: "Red", sliderColor: Color.red)
                SliderView(color: $blueColor, colorText: "Blue", sliderColor: Color.blue)
                SliderView(color: $greenColor, colorText: "Green", sliderColor: Color.green)
                ColorButton(redColor: $redColor, greenColor: $greenColor, blueColor: $blueColor, foregroundColor: $foregroundColor)
            }
            .padding()
            
        }
        
        
    }
}

#Preview {
    ContentView()
}

