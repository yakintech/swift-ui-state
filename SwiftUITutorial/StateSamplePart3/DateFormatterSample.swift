//
//  DateFormatterSample.swift
//  SwiftUITutorial
//
//  Created by Çağatay Yıldız on 5.10.2023.
//

import SwiftUI

struct DateFormatterSample: View {
    let dateFormatter: DateFormatter = {
           let formatter = DateFormatter()
        formatter.dateStyle = .long
           return formatter
       }()

       @State private var birthDate = Date.now

       var body: some View {
           VStack {
               DatePicker(selection: $birthDate, in: ...Date.now, displayedComponents: .date) {
                   Text("Select a date")
               }

               Text("Date is \(birthDate, formatter: dateFormatter)")
           }
       }
}

struct DateFormatterSample_Previews: PreviewProvider {
    static var previews: some View {
        DateFormatterSample()
    }
}
