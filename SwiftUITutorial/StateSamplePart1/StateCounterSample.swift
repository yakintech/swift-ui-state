//
//  StateCounterSample2.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 30.09.2023.
//

import SwiftUI

struct StateCounterSample: View {
    @State var counter = 0
    
    var body: some View {
       
        VStack{
            Text("Counter: \(counter)")
                .padding()
                .font(.largeTitle)
            
            Button("Increase"){
                counter = counter + 1
            }
        }
    }
}

struct StateCounterSample_Previews: PreviewProvider {
    static var previews: some View {
        StateCounterSample()
    }
}
