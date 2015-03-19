//
//  EventTableViewController.swift
//  ASC Illinois
//
//  Created by Tingting Gao on 3/8/15.
//  Copyright (c) 2015 Tingting Gao. All rights reserved.
//

import UIKit

class EventTableViewController: UITableViewController, UINavigationControllerDelegate {

    var eventNames = ["Programming Workshop", "March Club Dinner", "Relay for Life", "Board Interview", "Coffee Happy Hour"]
    var dates = ["March 10", "March 12", "March 14", "March 16","March 30"]
    var types = ["workshop", "dine","other", "meeting","coffee"]
    var skip = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .Plain,
        //    target: nil, action: nil)
//        self.tableView.contentInset = UIEdgeInsetsMake(45, 0, 0, 30)
        navigationController?.hidesBarsOnSwipe = false
    }
    
    override func viewDidAppear(animated: Bool) {
        var currentUser = PFUser.currentUser()
        if currentUser == nil && !skip {
            performSegueWithIdentifier("presentLogin", sender: self)
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "presentLogin") {
            var dvc = segue.destinationViewController as LoginViewController
            dvc.i_cant_do_anything_myself_vc = self
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        self.tabBarController?.title = "Upcoming Events"
        super.viewWillAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        
        
        return self.eventNames.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as EventTableViewCell
        cell.nameLabel.text = eventNames[indexPath.row]
        cell.dateLabel.text = dates[indexPath.row]
        cell.backgroundView = UIImageView(image: UIImage(named: types[indexPath.row]))
        
        return cell
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerCell = tableView.dequeueReusableCellWithIdentifier("HeaderCell") as HeaderCell
        //        headerCell.backgroundColor = UIColor(107.0/255.0, green: 189.0/255.0, blue: 77.0/255.0)
        return headerCell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
