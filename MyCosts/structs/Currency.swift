//
//  Currency.swift
//  MyCosts
//
//  Created by  Elena Kuklina on 22.04.2021.
//

import SwiftUI

struct Currency: View {
  var currency: Double
  
  var body: some View {
    Text("\(currency, specifier: "%.2f") ₽")
  }
}

struct Currency_Previews: PreviewProvider {
  static var previews: some View {
    Currency(currency: 100)
  }
}
