//
//  ToogleState.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 30.09.2023.
//

import SwiftUI

struct ToogleState: View {
    
    @State var isOpen = true
    
    
    var body: some View {
        VStack{
      
                Toggle("Open", isOn: $isOpen)
                     .tint(.mint)
            
            if isOpen {
            Text("Hello World!")
               }
        }
    }
}

struct ToogleState_Previews: PreviewProvider {
    static var previews: some View {
        ToogleState()
    }
}
