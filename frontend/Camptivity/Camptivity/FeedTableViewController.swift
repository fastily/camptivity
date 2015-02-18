//
//  FeedTableViewController.swift
//  Camptivity
//
//  Created by Shayan Mahdavi on 2/16/15.
//  Copyright (c) 2015 Camptivity INC. All rights reserved.
//

import UIKit

class FeedTableViewController: UITableViewController {
    
    /* TODO:
     * Currently not in use, working on issues with calling Segue requests
     * via a UIAlertAction */
    
    let alertController = UIAlertController(title: "Default Style", message: "A standard alert.", preferredStyle: .Alert)
    
    let cancel_action = UIAlertAction(title: "Cancel", style: .Cancel) {
        (action) in
        // ...
    }
    
    
    let fb_login_action = UIAlertAction(title: "FB Login", style: .Default) {
        (action) in
        // ...
    }
    
    let email_login_action = UIAlertAction(title: "Email Login", style: .Default){
        (action) in
        // ...
    }
    
    let signup_action = UIAlertAction(title: "Sign Up", style: .Default){
        UIAlertAction in
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        alertController.addAction(cancel_action)
        alertController.addAction(fb_login_action)
        alertController.addAction(email_login_action)
        alertController.addAction(signup_action)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 0
    }
    
    /* TODO:
     * Currently unlinked action for bringing up login alert view
     */
    @IBAction func triggerUserLogin(sender: AnyObject) {
        /*let signin_alertview : UIAlertView = UIAlertView(title: "Signin", message: "Login", delegate: nil, cancelButtonTitle: "Login", otherButtonTitles: "Login2")
        
        signin_alertview.show()*/
        
        self.presentViewController(alertController, animated: true) {
            // ...
        }
        
    }

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as UITableViewCell

        // Configure the cell...

        return cell
    }
    */

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