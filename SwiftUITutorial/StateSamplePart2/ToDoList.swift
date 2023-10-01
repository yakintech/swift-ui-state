//
//  ToDoList.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 1.10.2023.
//

import SwiftUI

struct ToDoList: View {
    
   @State var todo : String = ""
   @State var todos : [String] = ["Logo dizaynı yapılacak", "Sunucu güncelleme"]
   @State var completed : [String] = []
    
    var body: some View {
        VStack{
            
            Text("ToDo App")
                .padding()
                .font(.largeTitle)
                .fontWeight(.bold)
            
            
            
            TextField("Todo ", text:$todo)
                .padding()
            
            Button("Add"){
                todos.append(todo)
                todo = ""
            }
            Divider()
        
            
            ForEach(todos, id:\.self){item in
                
                Button{
                   //varsa ekle yoksa kaldır.
                    let isCompleted = completed.contains(item)
                    
                    if(isCompleted){
                        let indexNo = completed.firstIndex(of: item)
                        completed.remove(at: indexNo!)
                    }
                    else{
                        completed.append(item)
                    }
                }
                label:{
                    if completed.contains(item){
                        Text(item)
                            .padding()
                            .strikethrough()
                    }
                    else{
                        Text(item)
                            .padding()
                          
                    }
                }
                .foregroundColor(.black)
            }
             
            Spacer()
        }
    }
}

struct ToDoList_Previews: PreviewProvider {
    static var previews: some View {
        ToDoList()
    }
}
