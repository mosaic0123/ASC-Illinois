//
//  BoardTableViewController.swift
//  ASC Illinois
//
//  Created by Tingting Gao on 3/15/15.
//  Copyright (c) 2015 Tingting Gao. All rights reserved.
//

import UIKit

class BoardTableViewController: UITableViewController {

    var names = ["Annie Fowlkes", "Max Geifman", "Christian Pantoja", "Drake Kurtenbach", "Elizabeth Puthenveetil", "Allison Schroeder", "Andrew Cai", "Gienna Gaeta", "Liz Wortman", "Tingting Gao"]
    var titles = ["President", "Vice President", "Outreach Chair", "Company Chair", "Social Chair", "Jr. Social Chair", "Treasurer", "Newsletter Chair", "Secretary", "Webmaster"]
    var imageNames = ["Annie", "Max", "Christian", "Drake", "Lisa", "Allison", "Andrew", "Gienna", "Liz", "Tingting"]
    var emails = ["president@asc-illinois.com", "vpcompanyrelations@asc-illinois.com", "outreach@asc-illinois.com", "companypresentations@asc-illinois.com", "social@asc-illinois.com", "jrsocial@asc-illinois.com", "treasurer@asc-illinois.com", "alumninewsletter@asc-illinois.com", "secretary@asc-illinois.com", "webmaster@asc-illinois.com"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.tableView.contentInset = UIEdgeInsetsMake(60, -16, -16, 40)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        self.tabBarController?.title = "Board Contacts"
        super.viewWillAppear(animated)
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return self.names.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as BoardTableViewCell
        cell.nameLabel.text = names[indexPath.row]
        cell.titleLabel.text = titles[indexPath.row]
        cell.emailLabel.text = emails[indexPath.row]
        cell.profileImage.image = UIImage(named: imageNames[indexPath.row])
        // Configure the cell...
        cell.profileImage.layer.cornerRadius = 50
        cell.profileImage.clipsToBounds = true
        return cell
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
