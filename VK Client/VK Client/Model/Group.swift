//
//  Group.swift
//  VK Client
//
//  Created by Georgii Akhalaia on 25.08.24.
//

import UIKit

struct Group {
    let name: String
    let image: UIImage?
    
    init(name: String, image: UIImage? = nil) {
        self.name = name
        self.image = image
    }
}
