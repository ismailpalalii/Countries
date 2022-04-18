//
//  UIViewController+Extensions.swift
//  Countries
//
//  Created by ismail palali on 19.04.2022.
//

import Foundation
import UIKit

extension UIViewController {
  static func loadFromNib() -> Self {
    func instantiateFromNib<T: UIViewController>() -> T {
      return T.init(nibName: String(describing: T.self), bundle: nil)
    }
    
    return instantiateFromNib()
  }
}
