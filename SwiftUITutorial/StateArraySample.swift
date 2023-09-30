//
//  StateArraySample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 30.09.2023.
//

import SwiftUI

struct StateArraySample: View {
    
    @State var favoriteMetalBands = ["Iron Maiden", "Slipknot", "Rotting Christ", "Gojira"]
    
    var body: some View {
        
        VStack{
            
            Text("Favorites Length: \(favoriteMetalBands.count)")
                .padding()
            
            ForEach(favoriteMetalBands, id:\.self){item in
                Text(item)
                    .padding()
            }
            
            Button("Clear my favorites"){
                favoriteMetalBands = []
            }
            .padding()
        }
        
    }
}

struct StateArraySample_Previews: PreviewProvider {
    static var previews: some View {
        StateArraySample()
    }
}
