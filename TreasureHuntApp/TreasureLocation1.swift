//
//  TreasureLocation1.swift
//  TreasureHuntApp
//
//  Created by Tommy on 1/12/23.
//

import UIKit
import GoogleMaps

class TreasureLocation1: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set the camera with treasurelocation 1 location
        let camera = GMSCameraPosition.camera(withLatitude: 22.4216, longitude: 114.2323, zoom: 15.0)
        let mapView = GMSMapView.map(withFrame: self.view.frame, camera: camera)
        self.view.addSubview(mapView)
        
        
        // show the treasurePlace in the map.
        let treasure = GMSMarker()
        treasure.position = CLLocationCoordinate2D(latitude: 22.4216, longitude: 114.2323)
        treasure.title = "Hints"
        treasure.snippet = "The treasure is nearby Yiu On Estate!"
        treasure.map = mapView
        treasure.icon = UIImage(named: "Treasurebox")
        
        // Show the Hints in the map
        let labelMarker = GMSMarker()
        labelMarker.position = CLLocationCoordinate2D(latitude: 22.4205, longitude: 114.2323)
        let label = UILabel()
        label.text = "Hints: The treasure is nearby Yiu On Estate"
        label.sizeToFit()
        label.textColor = UIColor.red
        labelMarker.iconView = label
        labelMarker.map = mapView
    }
}
