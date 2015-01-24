//
//  SecondViewController.swift
//  iOSApp
//
//  Created by alvinwan on 1/24/15.
//  Copyright (c) 2015 TExBerkeley. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    @IBOutlet var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var centerCoordinate = CLLocationCoordinate2DMake(
            37.869113, -122.261195)
        
        var mapSpan = MKCoordinateSpanMake(0.003, 0.003)
        
        var mapRegion=MKCoordinateRegionMake(centerCoordinate, mapSpan)
        
        self.mapView.setRegion(mapRegion, animated:true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

