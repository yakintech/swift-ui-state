//
//  Profile.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 8.10.2023.
//

import SwiftUI

struct Profile: View {
    var name = ""
    var body: some View {
        VStack{
            Text("Profile \(name)")
                .font(.largeTitle)
            
            NavigationLink(destination: ChangePassword()){
                Text("Change Password")
            }
            
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
