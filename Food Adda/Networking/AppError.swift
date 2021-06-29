//
//  AppError.swift
//  Food Adda
//
//  Created by MacMini1 on 01/01/01.
//  Copyright © 2001 bacancy. All rights reserved.
//

import Foundation

enum AppError: LocalizedError {
    case errorDecoding
    case unknownError
    case invalidURL
    case serverError(String)
    
    var errorDescription: String? {
        switch self {
        
        case .errorDecoding:
            return "Response could not be decoded"
        case .unknownError:
            return "No idea what is going on"
        case .invalidURL:
            return "Give me a valid URL"
        case .serverError(let error):
            return error
       
        }
    }
}
