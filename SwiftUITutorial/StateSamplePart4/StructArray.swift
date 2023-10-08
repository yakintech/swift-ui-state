//
//  StructArray.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 7.10.2023.
//

import SwiftUI

struct StructArray: View {
    
    //sort operasyonları
    //searct operasyonları
    //18-22 arasını getir

    
    @State var clients : [Client] = []
    @State var minAge  = "0"
    @State var maxAge  = "0"
    @State var age = "0"
    @State var startName = ""
    
    var body: some View {
        VStack{
            
            TextField("Age: ", text:$age)
                .padding()
                .background(Color.black.opacity(0.1))
                .cornerRadius(15)
                .padding()
                .keyboardType(.decimalPad)
            Button("Search by age"){
                clients = clients.filter({$0.age == Int(age)!})
            }
            
            
            Divider()
            
            TextField("Min: ", text: $minAge)
                .padding()
                .background(Color.black.opacity(0.1))
                .cornerRadius(15)
                .padding()
                .keyboardType(.decimalPad)
            
            TextField("Max: ", text: $maxAge)
                .padding()
                .background(Color.black.opacity(0.1))
                .cornerRadius(15)
                .padding()
                .keyboardType(.decimalPad)
            
            Button("Search by Min and Max"){
                var min = Int(minAge) ?? 0
                var max = Int(maxAge) ?? 0
                
                clients = clients.filter({$0.age >= min && $0.age <= max})
                
            }
            
            Divider()
            
            TextField("Start Name: ", text: $startName)
                .padding()
                .background(Color.black.opacity(0.1))
                .cornerRadius(15)
                .padding()
                .keyboardType(.decimalPad)
            
            Button("Start Name Search"){
                clients = clients.filter({$0.name.lowercased().starts(with: startName.lowercased())})
            }
            
            
            ForEach(clients, id:\.id){item in
                Text("\(item.name) -  \(item.surname)  -  \(item.age)")
                    .padding()
                    .font(.title)
            }
        }
        .onAppear(){
            
            
            var client = Client(id:1, name:"Çağatay", surname: "Yıldız", age:18)
            var client2 = Client(id:2, name:"Aykut", surname: "Arslan", age:22)
        
            var client3 = Client(id:3, name:"Müge", surname: "Çalışkan", age:22)
            
            var client4 = Client(id:4, name:"Ertan", surname: "Yılmaz", age:44)
            
            clients.append(client)
            clients.append(client2)
            clients.append(client3)
            clients.append(client4)
            
          
        }
    }
}

struct StructArray_Previews: PreviewProvider {
    static var previews: some View {
        StructArray()
    }
}



struct Client{
    var id : Int = 0
    var name : String = ""
    var surname : String = ""
    var age : Int = 0
}



//PİZZA
//Pizza
//PiZZA


//pizza




//lowerCase
