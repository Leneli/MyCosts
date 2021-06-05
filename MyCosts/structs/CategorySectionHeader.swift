//
//  CategorySectionHeader.swift
//  MyCosts
//
//  Created by  Elena Kuklina on 22.04.2021.
//

import SwiftUI

struct fontModifier: ViewModifier {
  var category: String
  
  func body(content: Content) -> some View {
    content
      .font(Font.system(size: 20))
      .foregroundColor(getCategoryColor(category: category))
  }
}

struct CategorySectionHeader: View {
  var name: String
  
  var body: some View {
    HStack {
      Image(systemName: getCategoryIcon(name))
        .modifier(fontModifier(category: name))
      Text(name)
        .modifier(fontModifier(category: name))
    }
  }
}

struct CategorySectionHeader_Previews: PreviewProvider {
  static var previews: some View {
    CategorySectionHeader(name: "Котик")
  }
}
