//
//  Common.swift
//  MyCosts
//
//  Created by  Elena Kuklina on 20.04.2021.
//

import SwiftUI

struct Row: View {
  var label: String
  var value: Double
  
  var body: some View {
    HStack {
      Text(label)
      Spacer()
      Currency(currency: value)
        .font(Font.system(size: 18).weight(.bold))
    }
    .font(.system(size: 20))
  }
}

struct Common: View {
  var monthCost: Double
  var commonCost: Double
  
  var body: some View {
    VStack(spacing: 10) {
      Row(label: "Итого за месяц:", value: monthCost)
      Row(label: "Итого за всё время:", value: commonCost)
    }
    .padding(.horizontal, 20)
    .padding(.top, 10)
    .padding(.bottom, 40)
    .background(Color.init(#colorLiteral(red: 0.979925096, green: 0.9812250733, blue: 0.9916587472, alpha: 1)))
  }
}

struct Common_Previews: PreviewProvider {
  static var previews: some View {
    Common(monthCost: 50000, commonCost: 100000)
  }
}
