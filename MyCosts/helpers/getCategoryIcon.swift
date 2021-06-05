//
//  getCategoryIcon.swift
//  MyCosts
//
//  Created by  Elena Kuklina on 22.04.2021.
//

import SwiftUI

//"Счета",
//"Продукты",
//"Котик",
//"Автомобиль",
//"Красота",
//"Развлечения",
//"Прочее"

func getCategoryIcon(_ category: String) -> String {
  switch category {
    case _ where category == "Счета": return "rublesign.circle"
    case _ where category == "Продукты": return "cart.circle"
    case _ where category == "Котик": return "heart.circle"
    case _ where category == "Автомобиль": return "car.circle"
    case _ where category == "Красота": return "gift.circle"
    case _ where category == "Развлечения": return "gift.circle"
    default: return "house.circle"
  }
}
