//
//  StateInputSample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 30.09.2023.
//

import SwiftUI

struct StateInputSample: View {
    
    @State var name = ""
    @State var surname = ""
    @State var fullName = ""
    
    var body: some View {
        VStack{
            TextField("Name", text: $name)
                    .padding()
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(15)
                    .padding()
               
            
            TextField("Surname", text: $surname)
                .padding()
                .background(Color.black.opacity(0.1))
                .cornerRadius(15)
                .padding()
               
            
            Button("Result"){
                fullName = name.uppercased() + " " + surname.uppercased()
            }
            
            Text(fullName)
                .font(.largeTitle)
            
              
        }
    }
}

struct StateInputSample_Previews: PreviewProvider {
    static var previews: some View {
        StateInputSample()
    }
}
