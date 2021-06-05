//
//  TicketForm.swift
//  MyCosts
//
//  Created by  Elena Kuklina on 22.04.2021.
//

import SwiftUI

struct TicketForm: View {
  @State private var costName = ""
  @State private var costValue = ""
  @State private var costCategory = "Прочее"
  @State private var costDate = Date()
  
  let categoriesList = CATEGORIES
  
  var body: some View {
    Form {
      TextField("Название", text: $costName)
      
      // TODO: need validation or mask
      TextField("Стоимость", value: $costValue, formatter: NumberFormatter())
      
      Picker(selection: $costCategory, label: Text("Категория")) {
        ForEach(self.categoriesList, id: \.self) {
          Text($0)
        }
      }
      
      DatePicker(
        "Дата",
        selection: $costDate,
        displayedComponents: [.date]
      )
      .datePickerStyle(GraphicalDatePickerStyle())
    }
  }
}



struct TicketForm_Previews: PreviewProvider {
  static var previews: some View {
    TicketForm()
  }
}
