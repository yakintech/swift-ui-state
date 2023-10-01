//
//  UserCard.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 1.10.2023.
//

import SwiftUI

struct UserCard: View {
    
    var userModel : User = User(name: "Çağatay", surname: "Yıldız", email:"cagatay@mail.com", age: 18);
    
    var body: some View {
        VStack{
            Text(userModel.name)
                .padding()
                
            Divider()
            
            Text(userModel.surname)
                .padding()
            
            Divider()
            
            Text(userModel.email)
                .padding()
            
            Divider()
            
            Text("\(userModel.age)")
                .padding()
            
            Divider()
            
            Text("\(userModel.country)")
                .padding()
        }
    }
}

struct UserCard_Previews: PreviewProvider {
    static var previews: some View {
        UserCard()
    }
}
