//
//  User.swift
//  VK Client
//
//  Created by Georgii Akhalaia on 25.08.24.
//

import UIKit

struct User {
    let name: String
    let image: UIImage?
    
    init(name: String, image: UIImage? = nil) {
        self.name = name
        self.image = image
    }
}
