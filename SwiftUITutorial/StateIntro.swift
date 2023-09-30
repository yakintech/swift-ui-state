//
//  StateIntro.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 30.09.2023.
//

import SwiftUI

struct StateIntro: View {
   @State var name = "Çağatay"
    
    var body: some View {
        VStack{
            Text(name)
                .padding()
            
            Button("Change"){
                name = "Aykut"
            }
        }
    }
}

struct StateIntro_Previews: PreviewProvider {
    static var previews: some View {
        StateIntro()
    }
}
