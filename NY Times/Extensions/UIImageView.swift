//
//  UIImageView.swift
//  NY Times
//
//   Created by Fazil P on 25/09/21.
//

import Kingfisher

extension UIImageView {
    func load(withImageUrl urlString: String?) {
        if let urlString = urlString, let url = URL(string: urlString) {
            let imageResource = ImageResource(downloadURL: url)
            self.kf.setImage(with: imageResource, placeholder: nil, options:  [.transition(.fade(0.3))])
        } else {
            self.image = nil
        }
    }
}
