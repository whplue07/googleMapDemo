//
//  ViewController.swift
//  googleMapDemo
//
//  Created by Chieh-Chun Li on 2015/6/13.
//  Copyright (c) 2015年 Dan.Lee. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let camera = GMSCameraPosition.cameraWithLatitude(-33.868,
            longitude:151.2086, zoom:6)
        let mapView = GMSMapView.mapWithFrame(CGRectZero, camera:camera)
        
        let marker = GMSMarker()
        marker.position = camera.target
        //marker.position = CLLocationCoordinate2DMake(<#latitude: CLLocationDegrees#>, <#longitude: CLLocationDegrees#>)
        
        marker.snippet = "Hello World"
        marker.tappable = true
        marker.icon = UIImage(named: "Paul")
        marker.draggable = true
        marker.appearAnimation = kGMSMarkerAnimationPop
        marker.map = mapView
        
        
        
        self.view = mapView
        
        print("It's a branch test")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



