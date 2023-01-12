//
//  TreasureLocation2.swift
//  TreasureHuntApp
//
//  Created by Tommy on 1/12/23.
//

import UIKit
import GoogleMaps

class TreasureLocation2: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let camera = GMSCameraPosition.camera(withLatitude: 22.408425, longitude: 114.222716, zoom: 15.0)
        let mapView = GMSMapView.map(withFrame: self.view.frame, camera: camera)
        self.view.addSubview(mapView)
        
        
        // show the treasurePlace in the map.
        let treasure = GMSMarker()
        treasure.position = CLLocationCoordinate2D(latitude: 22.408425, longitude: 114.222716)
        treasure.title = "Hints"
        treasure.snippet = "The treasure is nearby Tai Shui Hang Station!"
        treasure.map = mapView
        treasure.icon = UIImage(named: "Treasurebox")
        
        // Show the Hints in the map
        let labelMarker = GMSMarker()
        labelMarker.position = CLLocationCoordinate2D(latitude: 22.407000, longitude: 114.222716)
        let label = UILabel()
        label.text = "Hints: The treasure is nearby Tai Shui Hang Station"
        label.sizeToFit()
        label.textColor = UIColor.red
        labelMarker.iconView = label
        labelMarker.map = mapView
    }
}

