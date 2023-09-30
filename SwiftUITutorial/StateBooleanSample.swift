//
//  StateBooleanSample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 30.09.2023.
//

import SwiftUI

struct StateBooleanSample: View {
    @State var isNormalMode = true
    @State var color : Color = .white
    
    var body: some View {
        VStack{
            
            HStack{
                Text(String(isNormalMode))
                Spacer()
            }
            Text("Hello")
                .padding()
            Button("Change Mode"){
                //isNormalMode = !isNormalMode
                
                if(isNormalMode == true){
                    isNormalMode = false
                    color = .black
                }
                else{
                    isNormalMode = true
                    color = .white
                }
            }
            Spacer()
        }
        .background(color)
     
    }
}

struct StateBooleanSample_Previews: PreviewProvider {
    static var previews: some View {
        StateBooleanSample()
    }
}
