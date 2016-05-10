//
//  Session.swift
//  ParallelXHome
//
//  Created by Deepak Kadarivel on 10/05/16.
//  Copyright © 2016 upbeatios. All rights reserved.
//

import UIKit

class Session {
    
    var title: String
    var image: UIImage
    
    init(title: String, image: UIImage) {
        self.title = title
        self.image = image
    }
    
    convenience init(dictionary: NSDictionary) {
        let title = dictionary["Title"] as? String
        let imageName = dictionary["Image"] as? String
        let image = UIImage(named: imageName!)
        self.init(title: title!, image: image!.decompressedImage)
    }
    
}
