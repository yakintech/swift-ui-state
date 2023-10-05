//
//  CalcSample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 5.10.2023.
//

import SwiftUI

struct CalcSample: View {
    
    @State var number1 = "0.0"
    @State var number2 = "0.0"
    @State var result = 0.0
    
    var body: some View {
        VStack{
            
            TextField("Number - 1", text: $number1)
                .padding()
                .background(Color.black.opacity(0.1))
                .cornerRadius(15)
                .padding()
                .keyboardType(.decimalPad)
            
            TextField("Number - 2", text: $number2)
                .padding()
                .background(Color.black.opacity(0.1))
                .cornerRadius(15)
                .padding()
                .keyboardType(.decimalPad)
            
            
            Button("Calc"){
                result = (Double(number1) ?? 0) / (Double(number2) ?? 1)
            }
            .padding()
            
            Text("Result: \(result)")
                .padding()
        }
    }
}

struct CalcSample_Previews: PreviewProvider {
    static var previews: some View {
        CalcSample()
    }
}
