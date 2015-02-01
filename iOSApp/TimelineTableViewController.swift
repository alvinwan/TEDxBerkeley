//
//  TimelineTableViewController.swift
//  iOSApp
//
//  Created by alvinwan on 1/24/15.
//  Copyright (c) 2015 TExBerkeley. All rights reserved.
//

import UIKit

class TimelineTableViewController: UITableViewController, UITableViewDelegate, UITableViewDataSource
    {

    @IBOutlet var TimelineView: UITableView!
    
    var items = [
        ["time": "800", "end": "900", "title": "CalDrummers", "image": "music"],
        ["time": "900", "end": "1000", "title": "The Earth is actually a Cube", "speaker": "Arnold Schwargeasldfhli", "image": "speaker"],
        ["time": "1200", "end": "1300", "title": "Lunch Break", "image": "music"],
        ["time": "1300", "end": "1600", "title": "Why Water is Brown", "speaker": "John Doe", "image": "speaker"],
        ["time": "1600", "end": "1650", "title": "Event Conclusion", "image": "music"]
    ];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.TimelineView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell-timeline")
//        self.TimelineView.dataSource = self
        
        self.TimelineView.rowHeight = UITableViewAutomaticDimension
        self.TimelineView.estimatedRowHeight = 60.0

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
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return items.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell-timeline") as UITableViewCell
        
        let row = self.items[indexPath.row]

        cell.textLabel?.text = row["time"]
        cell.detailTextLabel?.text = row["title"]
        
        let theImage = UIImage(named: String(row["image"]!+".png"))
        cell.imageView?.image = theImage
        
        return cell;
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60;
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
