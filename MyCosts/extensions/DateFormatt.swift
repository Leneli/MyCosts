//
//  DateFormatt.swift
//  MyCosts
//
//  Created by  Elena Kuklina on 22.04.2021.
//

import SwiftUI

extension Date {
  func formatted(format: String) -> String {
    let dateformat = DateFormatter()
    dateformat.dateFormat = format
    return dateformat.string(from: self)
  }
}
