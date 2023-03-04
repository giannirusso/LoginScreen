//
//  PlaceholderSpace.swift
//  LoginScreen
//
//  Created by D K on 04.03.2023.
//

import Foundation
import UIKit

class TextField: UITextField {

    let padding = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)
    
    override func rightViewRect(forBounds bounds: CGRect) -> CGRect {
        var rightBounds = super.rightViewRect(forBounds: bounds)
        rightBounds.origin.x -= 20
        return rightBounds
    }

    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
}
