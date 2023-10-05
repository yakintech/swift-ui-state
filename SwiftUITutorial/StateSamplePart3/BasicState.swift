//
//  BasicState.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 5.10.2023.
//

import SwiftUI

struct BasicState: View {
    
    @State private var number = 0
    
    var body: some View {
        
        VStack{
            Text("Number: \(number)")
                .font(.largeTitle)
                .padding()
            
            Button("Increase"){
                number = number + 1
            }
        }
    }
}

struct BasicState_Previews: PreviewProvider {
    static var previews: some View {
        BasicState()
    }
}
