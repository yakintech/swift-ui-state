//
//  StateFrameSample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 30.09.2023.
//let randomInt = Int.random(in: 0..<300)

import SwiftUI

struct StateFrameSample: View {
    
    @State var x = 200.0
    @State var y = 200.0
    
    var body: some View {
        VStack{
             
            //her butona tıkladığımda genişlik ve yükseklik 100-1000 arasında rastgele bir değer alıp değişsin
            Button("Change"){
                x = Float64.random(in: 100..<500)
                y = Float64.random(in: 100..<700)
            }
            
            Text("Bilge Adam")
                .frame(width: x, height: y)
                .border(.black)
              
        }
    }
}

struct StateFrameSample_Previews: PreviewProvider {
    static var previews: some View {
        StateFrameSample()
    }
}
