//
//  ProductDetail.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 1.10.2023.
//

import SwiftUI

struct ProductDetail: View {
    var name : String
    var description : String
    var price : String
 
    var body: some View {
        VStack{
            Text(name)
                .padding()
                .font(.largeTitle)
            
            Text(description)
                .padding()
                .font(.largeTitle)
            
            Text(price)
                .padding()
                .font(.largeTitle)
        }
    }
}
