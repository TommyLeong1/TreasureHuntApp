//
//  DistanceWithTreasure.swift
//  TreasureHuntApp
//
//  Created by Tommy on 1/12/23.
//

import UIKit
import GoogleMaps

class TreasureLocation1: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    }
}
