//
//  DetailsView.swift
//  MyCosts
//
//  Created by  Elena Kuklina on 22.04.2021.
//

import SwiftUI

struct DetailsView: View {
  @State private var isEdit = false
  
  var buttonLabel: String {
    return !self.isEdit ? "Редактировать" : "Сохранить"
  }
  
  var body: some View {
    VStack {
      if isEdit {
        TicketForm()
      } else {
        TicketDetails()
      }
      
      Spacer()
      
      Button(action: {
        self.isEdit.toggle()
      }) {
        Text(buttonLabel)
      }
      .padding(.top, 15)
    }
    .navigationTitle("Детали платежа")
  }
}

struct DetailsView_Previews: PreviewProvider {
  static var previews: some View {
    DetailsView()
  }
}
