//
//  TemperatureConverter.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 1.10.2023.
//

import SwiftUI

struct TemperatureConverter: View {
    
    @State var celcius = "0"
    @State var fahrenheit = 0.0
    
    var body: some View {
        VStack{
            Text("Temperature Converter")
                .font(.largeTitle)
                .padding()
            TextField("°C", text: $celcius)
                .padding()
                .background(Color.black.opacity(0.1))
                .cornerRadius(15)
                .padding()
                .keyboardType(.decimalPad)
            
            Button("Convert"){
                if(celcius != "" && celcius != "0"){
                    fahrenheit = Double(celcius)! * 1.8 + 32
                }
            }
            
            Text("°F \(fahrenheit)")
                .padding()
                .font(.largeTitle)
            
            Spacer()
        }
    }
}

struct TemperatureConverter_Previews: PreviewProvider {
    static var previews: some View {
        TemperatureConverter()
    }
}
