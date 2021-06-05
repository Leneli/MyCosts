//
//  CostRow.swift
//  MyCosts
//
//  Created by  Elena Kuklina on 20.04.2021.
//

import SwiftUI

struct CostRow: View {
  var name: String
  var category: String
  var cost: Double
  
  var body: some View {
    NavigationLink(destination: DetailsView()) {
      HStack {
        VStack(alignment: .leading) {
          Text(name)
          
          Text(category)
            .foregroundColor(getCategoryColor(category: category))
            .font(.system(size: 15))
        }
        
        Spacer()
        
        Currency(currency: cost)
          .font(Font.system(size: 18).weight(.bold))
      }
      .listRowInsets(EdgeInsets(
        top: 10, leading: 20, bottom: 10, trailing: 20
      ))
    }
    
  }
}

struct CostRow_Previews: PreviewProvider {
  static var previews: some View {
    CostRow(name: "Название статьи расхода", category: "Категория", cost: 100)
  }
}
