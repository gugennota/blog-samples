//
//  Buttons.swift
//  Components
//
//  Created by Ilya Belenkiy on 12/27/17.
//  Copyright © 2017 Rocket Insights. All rights reserved.
//

import UIKit

class StyledButton: UIButton {
    fileprivate var style: Style {
        return .primary
    }
    
    func configureStyle() {
        style.apply(to: self)
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        configureStyle()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureStyle()
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: super.intrinsicContentSize.width, height: style.buttonHeight)
    }
    
    override open func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        configureStyle()
    }
}

fileprivate extension UIButton {
    fileprivate enum Style {
        case primary, regular
        
        static let cornerRadius: CGFloat = 4
        static let contentEdgeInsets = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
        
        var isRounded: Bool {
            switch self {
            case .primary:
                return true
            case .regular:
                return false
            }
        }
        
        var buttonHeight: CGFloat {
            switch self {
            case .primary:
                return 50
            case .regular:
                return 25
            }
        }
        
        var titleFont: UIFont {
            switch self {
            case .primary:
                return .appFont(weight: .medium, size: 30)
            case .regular:
                return .appFont(weight: .medium, size: 18)
            }
        }
        
        var titleColor: UIColor {
            switch self {
            case .primary:
                return .appDarkGray
            case .regular:
                return UIColor(red:0.42, green:0.29, blue:0.06, alpha:1.0)
            }
        }
        
        var backgroundColor: UIColor {
            switch self {
            case .primary:
                return .branded
            case .regular:
                return .clear
            }
        }
        
        var borderWidth: CGFloat {
            switch self {
            case .primary:
                return 1
            case .regular:
                return 0
            }
        }
        
        var borderColor: UIColor {
            switch self {
            case .primary:
                return UIColor(red:0.67, green:0.43, blue:0.03, alpha:1.0)
            case .regular:
                return .clear
            }
        }
        
        func apply(to button: UIButton) {
            if isRounded {
                button.contentEdgeInsets = Style.contentEdgeInsets
                button.layer.cornerRadius = Style.cornerRadius
                button.layer.borderWidth = borderWidth
                button.layer.borderColor = borderColor.cgColor
            }
            
            button.titleLabel?.font = titleFont
            button.setTitleColor(titleColor, for: .normal)
            button.backgroundColor = backgroundColor
        }
    }
}

@IBDesignable
class PrimaryButton: StyledButton {
    fileprivate override var style: Style {
        return .primary
    }
}

@IBDesignable
class RegularButton: StyledButton {
    fileprivate override var style: Style {
        return .regular
    }
}

