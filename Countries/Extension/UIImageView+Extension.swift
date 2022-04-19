//
//  UIImageView+Extension.swift
//  Countries
//
//  Created by ismail palali on 19.04.2022.
//

import UIKit
import SVGKit

extension UIImageView {
func downloadedsvg(from url: URL, contentMode mode: UIView.ContentMode = .scaleAspectFit) {
    contentMode = mode
    URLSession.shared.dataTask(with: url) { data, response, error in
        guard
            let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
            let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
            let data = data, error == nil,
            let receivedicon: SVGKImage = SVGKImage(data: data),
            let image = receivedicon.uiImage
            else { return }
        DispatchQueue.main.async() {
            self.image = image
        }
    }.resume()
}
}

