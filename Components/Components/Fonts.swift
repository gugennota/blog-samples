//
//  Fonts.swift
//  Components
//
//  Created by Ilya Belenkiy on 12/27/17.
//  Copyright © 2017 Rocket Insights. All rights reserved.
//

import UIKit

extension UIFont {
    enum FontWeight: String {
        case heavy, medium, light
        var appFontName: String {
            switch self {
            case .heavy:
                return "Avenir-Heavy"
            case .medium:
                return "Avenir-Medium"
            case .light:
                return "Avenir-Light"
            }
        }
    }
    
    static func appFont(weight: FontWeight, size: CGFloat) -> UIFont {
        guard let font = UIFont(name: weight.appFontName, size: size) else {
            fatalError("App font not found.")
        }
        return font
    }
    
    static let header1: UIFont = appFont(weight: .heavy, size: 36)
    static let header2: UIFont = appFont(weight: .medium, size: 30)
    static let body: UIFont = appFont(weight: .light, size: 18)
}
