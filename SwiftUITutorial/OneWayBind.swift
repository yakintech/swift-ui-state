//
//  OneWayBind.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 30.09.2023.
//

import SwiftUI

struct OneWayBind: View {
    var cities = ["İstanbul", "Ankara", "İzmir"]
    var name = "Çağatay"
    var price = 22
    
    var body: some View {
        VStack {
        
            ForEach(cities, id:\.self){item in
                Text(item)
                    .padding()
            }
            Text(name)
                .padding()
            
            Text(String(price))
                .padding()
        
        }
        .padding()
    }
}

struct OneWayBind_Previews: PreviewProvider {
    static var previews: some View {
        OneWayBind()
    }
}
