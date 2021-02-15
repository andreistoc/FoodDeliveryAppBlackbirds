//
//  Helper.swift
//  FoodDeliveryAppBlackbirds
//
//  Created by Andrei Istoc on 15.02.2021.
//

import Foundation

func categoryString(for category: Categories) -> String {
    switch category {
    case .pizza:
        return "Pizza"
    case .burger:
        return "Burger"
    case .pasta:
        return "Pasta"
    case .desserts:
        return "Desserts"
    }
}
