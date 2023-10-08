//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 30.09.2023.
//

import SwiftUI

struct ContentView: View {
    

    
    var body: some View {
        
        NavigationView{
            TabView{
                
                Products()
                    .tabItem{
                        Label("Products", systemImage: "person")
                    }
                
                Search()
                    .tabItem{
                        Label("Search", systemImage: "person")
                    }
                
                Profile()
                    .tabItem{
                        Label("Profile", systemImage: "person")
                    }
                
                
            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
