//
//  InputArray.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 30.09.2023.
//

import SwiftUI

struct InputArray: View {
    @State var name = ""
    @State var users : [String] = []
    var body: some View {
        VStack{
            TextField("Name: ", text:$name)
                .padding()
                .background(Color.black.opacity(0.1))
                .cornerRadius(15)
                .padding()
             
            Button("Ekle"){
                var userControl = users.contains(name)
                
                if(!userControl){
                    users.append(name)
                    name = ""
                }
               
            }
            
            Divider()
            
            ForEach(users, id:\.self){item in
                Text(item)
                    .padding()
                    .font(.title2)
            }
            Spacer()
        }
    }
}

struct InputArray_Previews: PreviewProvider {
    static var previews: some View {
        InputArray()
    }
}
