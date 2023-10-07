//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 30.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    var cities = ["İstanbul", "Ankara", "İzmir"]
    var name = "Çağatay"
    var price = 22
    
    var body: some View {
        VStack {
        
           StructArray2()
        
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
