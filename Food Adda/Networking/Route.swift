//
//  Route.swift
//  Food Adda
//
//  Created by MacMini1 on 01/01/01.
//  Copyright © 2001 bacancy. All rights reserved.
//

import Foundation

enum Route {
    static let baseUrl = "https://yummie.glitch.me/"
    case fetchAllCategories
    case temp
    case placeOrder(String)
    case fetchCategoryDishes(String)
    var description: String {
        switch self {
        case .fetchAllCategories:
            return "dish-categories"
        case .temp:
            return "dishes/cat1"
        case .placeOrder(let dishId):
            return "orders/\(dishId)"
        case .fetchCategoryDishes(let catId):
            return "dishes/\(catId)"
        }
    }
}
