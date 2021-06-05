//
//  ReportView.swift
//  MyCosts
//
//  Created by  Elena Kuklina on 20.04.2021.
//

import SwiftUI

struct ReportView: View {
    var body: some View {
      List {
        ForEach(CATEGORIES, id: \.self) { category in
          Section(header: CategorySectionHeader(name: category)) {
            Text("It is Report View")
            Text("It is Report View")
          }
        }
      }
      .listStyle(GroupedListStyle())
    }
}

struct ReportView_Previews: PreviewProvider {
    static var previews: some View {
        ReportView()
    }
}
