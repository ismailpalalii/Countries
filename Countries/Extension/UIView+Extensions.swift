//
//  UIVIEW+.swift
//  Countries
//
//  Created by ismail palali on 19.04.2022.
//

import Foundation
import UIKit

@IBDesignable extension UIView {
    @IBInspectable var borderColor: UIColor? {
        get {
            guard let cgColor = layer.borderColor else {
                return nil
            }
            return UIColor(cgColor: cgColor)
        }
        set { layer.borderColor = newValue?.cgColor }
    }

    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
}

extension UIView {
  static var nib: UINib {
    return UINib(nibName: String(describing: self), bundle: Bundle(for: Self.self))
  }
  
  static func loadFromNib() -> Self {
    return Bundle(for: Self.self).loadNibNamed(String(describing: Self.self),
                                               owner: nil,
                                               options: nil)![0] as! Self
  }
}
