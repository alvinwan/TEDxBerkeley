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
    
    var titles = [
        "Registration",
        "Men's Octet (a capella)",
        "Prasad Kaipa",
        "Adora Svitak",
        "Marc Gopin",
        "Carolyn Gable",
        "Eric Holt-Gimenez",
        "Dan Garcia",
        "Valerie Joi",
        "Lunch",
        "Cal Taiko",
        "Suzanne Ackerman-Berman",
        "Victoria Kisyombe",
        "Alison Meyer",
        "Mike Robbins",
        "Meena Shenoy",
        "Dan Viederman",
        "Break",
        "Cal Bhangra",
        "Richmond Sarpong",
        "Emily Levine",
        "Eric Rasmussen",
        "Viviana Guzman",
        "Steve Wozniack",
        "Reception"
    ];
    
    var times = [
        "8:30 - 9:30 a.m.",
        "10 a.m. - 12 p.m.",
        "10 a.m. - 12 p.m.",
        "10 a.m. - 12 p.m.",
        "10 a.m. - 12 p.m.",
        "10 a.m. - 12 p.m.",
        "10 a.m. - 12 p.m.",
        "10 a.m. - 12 p.m.",
        "10 a.m. - 12 p.m.",
        "12 - 1:30 p.m.",
        "1:30 - 3:15 p.m.",
        "1:30 - 3:15 p.m.",
        "1:30 - 3:15 p.m.",
        "1:30 - 3:15 p.m.",
        "1:30 - 3:15 p.m.",
        "1:30 - 3:15 p.m.",
        "1:30 - 3:15 p.m.",
        "3:15 - 3:45 p.m.",
        "3:45 - 5:15 p.m.",
        "3:45 - 5:15 p.m.",
        "3:45 - 5:15 p.m.",
        "3:45 - 5:15 p.m.",
        "3:45 - 5:15 p.m.",
        "3:45 - 5:15 p.m.",
        "5:15 - 6 p.m."
    ]
    
    var images = [
        "speaker",
        "speaker",
        "speaker",
        "speaker",
        "speaker",
        "speaker",
        "speaker",
        "speaker",
        "speaker",
        "speaker",
        "music",
        "speaker",
        "speaker",
        "speaker",
        "speaker",
        "speaker",
        "speaker",
        "speaker",
        "music",
        "speaker",
        "speaker",
        "speaker",
        "speaker",
        "speaker",
        "speaker"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
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
        return titles.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell-timeline") as UITableViewCell
        
        let n = indexPath.row

        cell.textLabel?.text = titles[n]
        cell.detailTextLabel?.text = times[n]
        
        let theImage = UIImage(named: String(images[n]+".png"))
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
