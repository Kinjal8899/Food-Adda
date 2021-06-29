//
//  String+Extension.swift
//  Food Adda
//
//  Created by MacMini1 on 01/01/01.
//  Copyright © 2001 bacancy. All rights reserved.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
