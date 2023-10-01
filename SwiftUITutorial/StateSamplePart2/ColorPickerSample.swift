//
//  ColorPickerSample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 1.10.2023.
//

import SwiftUI

struct ColorPickerSample: View {
    
    @State var bgColor : Color = .blue
    

    var body: some View {
        
        VStack{
            ColorPicker("Set the background color ", selection: $bgColor)
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(bgColor)
        
    }
}

struct ColorPickerSample_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerSample()
    }
}
