//
//  Labels.swift
//  Components
//
//  Created by Ilya Belenkiy on 12/27/17.
//  Copyright © 2017 Rocket Insights. All rights reserved.
//

import UIKit

class StyledLabel: UILabel {
    fileprivate var style: String.TextStyle {
        return .body
    }
    
    func configureStyle() {
        attributedText = style.apply(to: text ?? "")
    }

    override var text: String? {
        didSet {
            configureStyle()
        }
    }
    
    override var textColor: UIColor! {
        didSet {
            configureStyle()
        }
    }
}

@IBDesignable
class Header1Label: StyledLabel {
    override fileprivate var style: String.TextStyle {
        return .header1
    }
}

@IBDesignable
class Header2Label: StyledLabel {
    override fileprivate var style: String.TextStyle {
        return .header2
    }
}

@IBDesignable
class BodyLabel: StyledLabel {
    override fileprivate var style: String.TextStyle {
        return .body
    }
}
