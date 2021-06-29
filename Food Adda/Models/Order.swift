//
//  Order.swift
//  Food Adda
//
//  Created by MacMini1 on 01/01/01.
//  Copyright © 2001 bacancy. All rights reserved.
//

import Foundation

struct Order: Decodable {
    let id,name: String?
    let dish: Dish?
}
