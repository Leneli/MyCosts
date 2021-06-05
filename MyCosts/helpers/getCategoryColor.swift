//
//  getCategoryColor.swift
//  MyCosts
//
//  Created by  Elena Kuklina on 22.04.2021.
//

import SwiftUI

func getCategoryColor(category: String) -> Color {
  switch category {
    case _ where category == "Счета": return Color.init(#colorLiteral(red: 0.1900872932, green: 0.4862745106, blue: 0.3051524501, alpha: 1))
    case _ where category == "Продукты": return Color.init(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1))
    case _ where category == "Котик": return Color.init(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1))
    case _ where category == "Автомобиль": return Color.init(#colorLiteral(red: 0.4640012762, green: 0.785218013, blue: 0.03968471657, alpha: 1))
    case _ where category == "Красота": return Color.init(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
    case _ where category == "Развлечения": return Color.init(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))
    default: return Color.gray
  }
}
