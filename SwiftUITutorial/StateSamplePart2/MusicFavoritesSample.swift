//
//  MusicFavoritesSample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 1.10.2023.
//

import SwiftUI

struct MusicFavoritesSample: View {
    
    @State var metalBands = ["Iron Maiden", "Slipknot", "Gojira", "Parkway Drive", "Moonspell", "Rotting Christ", "Razor", "Furtherial"]
    
    @State var favorites : [String] = []
    
    var body: some View {
        VStack{
            ForEach(metalBands, id:\.self){item in
                HStack{
                    Text(item)
                        .padding()
                    
                    Button{
                        //eğer bu müzik grubu favorilerde varsa favorilerden çıkar yoksa ekle
                        
                        var bandControl = favorites.contains(item)
                        
                        //eğer bu grup varsa çıkaracağım
                        if(bandControl){
                            var bandIndexNo = favorites.firstIndex(of: item)
                            favorites.remove(at: bandIndexNo!)
                        }
                        else{
                            favorites.append(item)
                        }
                        
                        
                    }label: {
                        var bandControl = favorites.contains(item)
                        
                        if bandControl{
                            Image(systemName: "star.fill")
                        }
                        else{
                            Image(systemName: "star")
                        }
                      
                      
                    }
                    
                }
            }
        }
    }
}

struct MusicFavoritesSample_Previews: PreviewProvider {
    static var previews: some View {
        MusicFavoritesSample()
    }
}
