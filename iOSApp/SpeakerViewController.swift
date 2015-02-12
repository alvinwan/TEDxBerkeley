//
//  SpeakerViewController.swift
//  iOSApp
//
//  Created by alvinwan on 2/12/15.
//  Copyright (c) 2015 TExBerkeley. All rights reserved.
//

import UIKit

class SpeakerViewController: UIViewController {

//    @IBOutlet weak var Name: UILabel!
//    @IBOutlet weak var Byline: UILabel!
    
    var items = ["name": "Loading...", "byline": "loading..."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        Name.text = items["name"]
//        Byline.text = items["byline"]

        // Do any additional setup after loading the view.
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
