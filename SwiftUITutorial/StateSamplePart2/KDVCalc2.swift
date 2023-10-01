//
//  KDVCalc2.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 1.10.2023.
//

import SwiftUI

struct KDVCalc2: View {
    
    @State var price = ""
    var body: some View {
        VStack{
            Text("KDV Calc")
                .padding()
                .font(.largeTitle)
                .fontWeight(.bold)
            
            TextField("Price", text: $price)
                .padding()
                .border(.blue)
            
            Spacer()
        }
        .padding()
    }
}

struct KDVCalc2_Previews: PreviewProvider {
    static var previews: some View {
        KDVCalc2()
    }
}
