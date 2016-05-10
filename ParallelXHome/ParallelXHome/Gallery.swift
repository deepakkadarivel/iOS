//
//  Gallery.swift
//  ParallelXHome
//
//  Created by Deepak Kadarivel on 10/05/16.
//  Copyright © 2016 upbeatios. All rights reserved.
//

import UIKit

class Gallery: Session {
    
    class func allImages() -> [Gallery] {
        var images = [Gallery]()
        if let URL = NSBundle.mainBundle().URLForResource("Gallery", withExtension: "plist") {
            if let imagesFromPlist = NSArray(contentsOfURL: URL) {
                for dictionary in imagesFromPlist {
                    let image = Gallery(dictionary: dictionary as! NSDictionary)
                    images.append(image)
                }
            }
        }
        return images
    }
    
}