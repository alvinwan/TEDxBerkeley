//
//  SpeakersTableViewController.swift
//  iOSApp
//
//  Created by alvinwan on 1/24/15.
//  Copyright (c) 2015 TExBerkeley. All rights reserved.
//

import UIKit

class SpeakersTableViewController: UITableViewController, UITableViewDelegate, UITableViewDataSource
    {
    
    @IBOutlet var SpeakersView: UITableView!
    
    var items = [
        ["name": "Suzanne Ackerman-Berman", "byline": "Transformation Director, PicknPay South Africa", "bio": "Suzanne graduated from UCT (University of Cape Town) with a BA in French and Politics. Whilst a student, she was the first woman to chair the University Students Fund raising Rag committee 1984, and was elected vice-chair of SHAWCO.( Students Community Welfare Programs ).  After university, Suzanne received extensive training in supermarkets in France and UK. She settled in France, ran her own businesses in restaurants and nightclubs in a French Ski resort for 7 years. Returning to South Africa, she joined the family Supermarket business, Pick n Pay , as a trainee manager in fresh foods.  During her 19 years in the Company, she worked in various positions in the business, starting from Floor management, and buying, to General Manager of Corporate Affairs and Social Responsibility. In 2007 she founded the Small Business Incubator that seeks to address the social and economic inequalities of the past created by the Apartheid era, by creating access to the formal market for small and previously disadvantaged entrepreneurs. A passionate proponent for equality, job creation and skills development, Suzanne assists many new entrepreneurs in all aspects of business and life skills through a detailed mentorship programme that ensures their sustainability as suppliers to the broader economy."],
    ];
    
    override func viewDidLoad() {
        println("speakers loaded");
        
        super.viewDidLoad()
        self.SpeakersView.estimatedRowHeight = 60.0
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
        let cell = tableView.dequeueReusableCellWithIdentifier("cell-speaker") as UITableViewCell
        
        let row = self.items[indexPath.row]

        cell.textLabel?.text = row["name"]
        cell.detailTextLabel?.text = row["byline"]
        
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        return cell;
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "speakerDetail" {
            let SpeakerDetail = segue.destinationViewController as DetailViewController;
            let indexPath = self.tableView.indexPathForSelectedRow()!
            let data = self.items[indexPath.row];
            SpeakerDetail.items = data;
            SpeakerDetail.updateLabels()
        }
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
