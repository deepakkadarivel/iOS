//
//  UIImage+Decompression.swift
//  ParallelXHome
//
//  Created by Deepak Kadarivel on 10/05/16.
//  Copyright © 2016 upbeatios. All rights reserved.
//

import UIKit

extension UIImage {
    
    var decompressedImage: UIImage {
        UIGraphicsBeginImageContextWithOptions(size, true, 0)
        drawAtPoint(CGPointZero)
        let decompressedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return decompressedImage
    }
    
}
