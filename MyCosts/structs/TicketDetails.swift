//
//  TicketDetails.swift
//  MyCosts
//
//  Created by  Elena Kuklina on 22.04.2021.
//

import SwiftUI

struct TicketDetails: View {
  var body: some View {
    Form {
      List {
        HStack {
          Text("Название")
            .font(.callout)
          Spacer()
          Text("Продукты на неделю")
        }
        
        HStack {
          Text("Категория")
            .font(.callout)
          Spacer()
          Text("Продукты")
            .foregroundColor(getCategoryColor(category: "Продукты"))
        }
        
        HStack {
          Text("Стоимость")
            .font(.callout)
          Spacer()
          Currency(currency: 101)
        }
        
        HStack {
          Text("Дата")
            .font(.callout)
          Spacer()
          Text("\(Date().formatted(format: "dd.MM.yyyy"))")
        }
      }
    }
  }
}

struct TicketDetails_Previews: PreviewProvider {
  static var previews: some View {
    TicketDetails()
  }
}
