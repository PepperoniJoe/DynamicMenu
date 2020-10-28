//
//  Enums.swift
//  DynamicMenu
//
//  Created by Marcy Vernon on 10/27/20.
//

import UIKit

enum ShapeType {
    case circle
    case square
    case roundedSquare
}

enum Font: String {
    case regular = "AmericanTypewriter" 
    case bold = "BanglaSangamMN-Bold"
    
    func of(size: CGFloat) -> UIFont? {
        return UIFont(name: rawValue, size: size)
    }
}


