//
//  Text.swift
//  Components
//
//  Created by Ilya Belenkiy on 12/27/17.
//  Copyright © 2017 Rocket Insights. All rights reserved.
//

import UIKit

extension String {
    enum TextStyle {
        case header1, header2, body
        
        var font: UIFont {
            switch self {
            case .header1:
                return .header1
            case .header2:
                return .header2
            case .body:
                return .body
            }
        }
        
        var color: UIColor {
            switch self {
            case .header1:
                return .appDarkGray
            case .header2, .body:
                return .appGray
            }
        }
        
        func apply(to string: String) -> NSAttributedString {
            var attributes: [NSAttributedStringKey: Any] = [:]
            attributes[.font] = font
            attributes[.foregroundColor] = color
            
            return NSAttributedString(string: string, attributes: attributes)
        }
    }
}
