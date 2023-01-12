//
//  TreasureLocation3.swift
//  TreasureHuntApp
//
//  Created by Tommy on 1/12/23.
//

import UIKit
import GoogleMaps

class TreasureLocation3: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set the camera with treasurelocation 3 location
        let camera = GMSCameraPosition.camera(withLatitude: 22.387694, longitude: 114.208349, zoom: 15.0)
        let mapView = GMSMapView.map(withFrame: self.view.frame, camera: camera)
        self.view.addSubview(mapView)
        
        
        // show the treasurePlace in the map.
        let treasure = GMSMarker()
        treasure.position = CLLocationCoordinate2D(latitude: 22.387694, longitude: 114.208349)
        treasure.title = "Hints"
        treasure.snippet = "The treasure is nearby Shek Mun Station!"
        treasure.map = mapView
        treasure.icon = UIImage(named: "Treasurebox")
        
        // Show the Hints in the map
        let labelMarker = GMSMarker()
        labelMarker.position = CLLocationCoordinate2D(latitude: 22.387000, longitude: 114.208349)
        let label = UILabel()
        label.text = "Hints: The treasure is nearby Shek Mun Station"
        label.sizeToFit()
        label.textColor = UIColor.red
        labelMarker.iconView = label
        labelMarker.map = mapView
    }
}
