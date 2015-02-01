//
//  AboutViewController.swift
//  iOSApp
//
//  Created by alvinwan on 1/31/15.
//  Copyright (c) 2015 TExBerkeley. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var AboutView: UITableView!

    var text = [
        ["copy": "This is some short text."],
        ["copy": "What would you do if you took a moment to sit and ponder. What would you think about? What, where, or to WHOM would your thoughts drift towards? Strange how the subconscious mind can tell us so much about ourselves. Strange that a moment of silence can be so loud, and say so much about who we are."]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.AboutView.rowHeight = UITableViewAutomaticDimension
        self.AboutView.estimatedRowHeight = 44.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.text.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.AboutView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        
        cell.textLabel?.text = self.text[indexPath.row]["copy"]
        
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
