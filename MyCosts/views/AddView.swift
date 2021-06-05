//
//  AddView.swift
//  MyCosts
//
//  Created by  Elena Kuklina on 20.04.2021.
//

import SwiftUI

struct AddView: View {
  @Environment(\.presentationMode) var presentationMode
  
  var body: some View {
    NavigationView {
      TicketForm()
        .navigationTitle("Добавить")
        .navigationBarItems(trailing: Button(action: {
          // TODO: save... if all right (validation)
          presentationMode.wrappedValue.dismiss()
        }) {
          Text("Сохранить")
        })
    }
  }
}

struct AddView_Previews: PreviewProvider {
  static var previews: some View {
    AddView()
  }
}
