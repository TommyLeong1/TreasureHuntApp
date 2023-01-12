//
//  MapView2.swift
//  TreasurehuntApp
//
//  Created by Tommy on 1/11/23.
//

import UIKit
import GoogleMaps

class MapView2: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate 22.4292929,114.243972 at zoom level 15.0.
        let camera = GMSCameraPosition.camera(withLatitude: 22.4292929, longitude: 114.243972, zoom: 30.0)
        let mapView = GMSMapView.map(withFrame: self.view.frame, camera: camera)
        self.view.addSubview(mapView)
        

        // Creates a treasure hint in the map.
        let Hint = GMSMarker()
        Hint.position = CLLocationCoordinate2D(latitude: 22.4292929, longitude: 114.243972)
        Hint.title = "Hint"
        Hint.snippet = "Treasure is nearby here around 10m"
        Hint.map = mapView
  }
}
