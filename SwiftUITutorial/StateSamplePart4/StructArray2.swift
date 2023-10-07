//
//  StructArray2.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 7.10.2023.
//

import SwiftUI
import Combine

struct StructArray2: View {
    @State var clients : [Client] = []
    @State var originalClients : [Client] = []
    @State var searchByName : String = ""
    
    var body: some View {
 
        VStack{
            
            TextField("Name: ", text:$searchByName)
                .onChange(of: searchByName){s in
                    if(s != ""){
                        clients = originalClients.filter({$0.name.lowercased().contains(s.lowercased())})
                    }
                    else{
                        clients = originalClients
                    }
                }

                .padding()
                .background(Color.black.opacity(0.1))
                .cornerRadius(15)
                .padding()
                .keyboardType(.decimalPad)
                
            
            Button("Search")
                {
                    clients = originalClients.filter({$0.name.lowercased().contains(searchByName.lowercased())})
                
                   // clients = clients.filter({$0.name.lowercased().starts(with: searchByName.lowercased())})
                }
                .padding()
            
            Button("Refresh"){
                clients = originalClients
            }
            
            ForEach(clients, id:\.id){item in
                Text("\(item.name) -  \(item.surname)  -  \(item.age)")
                    .padding()
                    .font(.title)
            }
        }
        .onAppear(){
            let client = Client(id:1, name:"Çağatay", surname: "Yıldız", age:18)
            
            let client2 = Client(id:2, name:"Aykut", surname: "Arslan", age:22)
            
            let client3 = Client(id:3, name:"Müge", surname: "Çalışkan", age:22)
            
            let client4 = Client(id:4, name:"Ertan", surname: "Yılmaz", age:44)
            
            clients.append(client)
            clients.append(client2)
            clients.append(client3)
            clients.append(client4)
            
            originalClients = clients
        }
    }
}

struct StructArray2_Previews: PreviewProvider {
    static var previews: some View {
        StructArray2()
    }
}
