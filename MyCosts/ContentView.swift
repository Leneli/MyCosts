//
//  ContentView.swift
//  MyCosts
//
//  Created by  Elena Kuklina on 20.04.2021.
//

import SwiftUI

// TODO: fix method
func getTotal() -> Double {
  var total: Double = 0
  
  for item in TEST_DATA {
    let cost = item["cost"] ?? "0"
    let costDouble = Double(cost) ?? 0
    
    total += costDouble
  }
  
  return total
}

struct ContentView: View {
  @State private var showingAddSheet = false
  @State private var monthCost: Double = 0
  @State private var totalCost: Double = 0
  
  var body: some View {
    NavigationView {
      VStack {
        List {
          Section(header: Text("April")) {
            ForEach(TEST_DATA, id: \.self) { item in
              let cost = item["cost"] ?? "0"
              let costDouble = Double(cost) ?? 0
              
              CostRow(
                name: item["name"] ?? "",
                category: item["category"] ?? "",
                cost: costDouble
              )
            }
            .onDelete(perform: { indexSet in
              // delete
            })
          }
        }
        .listStyle(GroupedListStyle())
        
        Spacer()
        
        Common(monthCost: getTotal(), commonCost: getTotal())
      }
      .background(Color.init(#colorLiteral(red: 0.979925096, green: 0.9812250733, blue: 0.9916587472, alpha: 1)))
      .navigationTitle("Мои расходы")
      .navigationBarTitleDisplayMode(.inline)
      .navigationBarItems(
        leading: NavigationLink(destination: ReportView()) {
          NavigationImage(name: "chart.pie")
        },
        trailing: Button(action: {
          showingAddSheet.toggle()
        }) {
          NavigationImage(name: "plus")
        }
        .sheet(isPresented: $showingAddSheet) {
          AddView()
        }
      )
      .ignoresSafeArea(.all, edges: .bottom)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
