//
//  DetailViewController.swift
//  iOSApp
//
//  Created by Alvin Wan on 2/12/15.
//  Copyright (c) 2015 TExBerkeley. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelByline: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    var items = ["name": "loading...", "byline": "loading..."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateLabels();

        // Do any additional setup after loading the view.
    }
    
    func updateLabels() {
        print(self.items)
        labelName?.text = self.items["name"]
        labelByline?.text = self.items["byline"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
