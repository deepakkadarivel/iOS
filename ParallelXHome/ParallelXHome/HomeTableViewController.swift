//
//  HomeTableViewController.swift
//  ParallelXHome
//
//  Created by Deepak Kadarivel on 10/05/16.
//  Copyright © 2016 upbeatios. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {

    var offset:CGFloat = 40.0
    let images = Gallery.allImages()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView!.backgroundColor = UIColor.clearColor()
        self.tableView!.decelerationRate = UIScrollViewDecelerationRateNormal
    }
    
    override func viewWillAppear(animated: Bool) {
        self.view.backgroundColor = UIColor.whiteColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.images.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("HomeCell", forIndexPath: indexPath) as! HomeTableViewCell

        // Configure the cell...
        cell.gallery = images[indexPath.item]

        return cell
    }
    
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        let transformation = CATransform3DTranslate(CATransform3DIdentity, 0, self.offset, 0)
        cell.layer.transform = transformation
        
        UIView.animateWithDuration(1.0, delay: 0.5, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
            cell.layer.transform = CATransform3DIdentity
            }, completion: nil)
//        UIView.animateWithDuration(1.5,) {
//            
//        }
    }
    
    override func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        
        if targetContentOffset.memory.y < scrollView.contentOffset.y {
            self.offset = -40
            
        } else {
            self.offset = 40
        }
        
    }

}
