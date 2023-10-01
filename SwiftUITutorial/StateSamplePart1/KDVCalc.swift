//
//  SwiftUIView.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 30.09.2023.
//

import SwiftUI

struct KDVCalc: View {
        
    @State var price : String = ""
    @State var kdvResult = 0.0
    
    var body: some View {
        VStack{
            
            Text("KDV HESAPLAMA")
                .font(.largeTitle)
            
            TextField("Fiyat", text: $price)
                .padding()
                .background(Color.black.opacity(0.1))
                .cornerRadius(15)
                .padding()
            
            Button("Hesapla"){
                kdvResult = Float64(price)! * 1.2
            }
            
            Text("Sonuç: \(kdvResult)")
                
            Spacer()
            
        }
    }
}

struct KDVCalc_Previews: PreviewProvider {
    static var previews: some View {
        KDVCalc()
    }
}
