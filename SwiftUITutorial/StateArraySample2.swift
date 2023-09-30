//
//  StateArraySample2.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 30.09.2023.
//

import SwiftUI

struct StateArraySample2: View {
    
    @State var films = ["Çığlık", "Yaralı Yüz", "Piyanist", "Kara Komik", "Dövüş Klubü", "Kurak Günler", "Pek Yakında", "Hokkabaz", "Sen Ben Lenin", "Kelebeğin Rüyası"]
    
    @State var favorites : [String] = []
    
    var body: some View {
        VStack{
            
            Text("Films")
                .padding()
                .font(.largeTitle)
            
            ForEach(films, id:\.self){item in
              
                Button{
                    //mevcut film favori listesinde var mı? Varsa ekleme yoksa ekle,
                     
                    var hasFav = favorites.contains(item)
                    
                    if(hasFav == false){
                        
                        favorites.append(item)
                    }
                
                    
                }label: {
                    Text(item)
                     
                }
            }
            Divider()
            
            Text("Favorites")
                .padding()
                .font(.largeTitle)
             
            
            ForEach(favorites, id:\.self){item in
              
                Button{
                    //tıkladığım elemanı diziden çıkartıyorum
                    var indexNo = favorites.firstIndex(of: item)
                    
                    favorites.remove(at: indexNo!)
                    
                }label: {
                    Text(item)
                     
                }
            }
            Spacer()
            
        }
    }
}

struct StateArraySample2_Previews: PreviewProvider {
    static var previews: some View {
        StateArraySample2()
    }
}
