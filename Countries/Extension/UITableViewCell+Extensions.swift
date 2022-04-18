//
//  UITableViewCell+Extensions.swift
//  Countries
//
//  Created by ismail palali on 19.04.2022.
//

import Foundation
import UIKit

extension UITableViewCell {
  static var reuseIdentifier: String {
    return String(describing: self)
  }
}
