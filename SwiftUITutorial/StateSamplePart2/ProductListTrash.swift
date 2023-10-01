//
//  ProductListTrash.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 1.10.2023.
//

import SwiftUI

struct ProductListTrash: View {
    
    @State var products = ["IPhone", "Samsung", "Siemens", "Huawei", "Oppo", "Vestel", "Nokia"]
    @State var deletedProducts : [String] = []
    @State var name = ""
    var body: some View {
       
        VStack{
            
            Text("Products")
                .padding()
                .font(.largeTitle)
            
            Divider()
                
            TextField("Name", text: $name )
                .padding()
            
            Button("Add"){
                products.append(name)
            }
                .padding()
            
            Divider()
            ForEach(products, id:\.self){item in
                
                HStack{
                    Text(item)
                        .padding()
                    
                    Button{
                        deletedProducts.append(item)
                        var productIndexNo = products.firstIndex(of: item)
                        products.remove(at: productIndexNo!)
                    }
                    label:{
                        Image(systemName: "trash")
                    }
                    
                }
            }
            
            Divider()
            
            Button("Geri Al"){
                
                for item in deletedProducts{
                    products.append(item)
                }
                
                deletedProducts = []
                
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ProductListTrash_Previews: PreviewProvider {
    static var previews: some View {
        ProductListTrash()
    }
}
