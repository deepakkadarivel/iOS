//
//  HomeTableViewCell.swift
//  ParallelXHome
//
//  Created by Deepak Kadarivel on 10/05/16.
//  Copyright © 2016 upbeatios. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var homeImageView: UIImageView!
    @IBOutlet weak var labelView: UILabel!
    @IBOutlet weak var cardView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var gallery: Gallery? {
        didSet {
            if let gallery = gallery {
                homeImageView.image = gallery.image
                labelView.text = gallery.title
            }
        }
    }

}
