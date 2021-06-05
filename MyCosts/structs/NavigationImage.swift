//
//  NavigationImage.swift
//  MyCosts
//
//  Created by  Elena Kuklina on 20.04.2021.
//

import SwiftUI

struct NavigationImage: View {
  var name: String
  
  var body: some View {
    Image(systemName: name)
      .font(.title2)
  }
}

struct NavigationImage_Previews: PreviewProvider {
    static var previews: some View {
      NavigationImage(name: "plus")
    }
}
