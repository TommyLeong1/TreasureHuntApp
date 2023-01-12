//
//  ViewController.swift
//  TreasureHuntApp
//
//  Created by Tommy on 1/11/23.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {
    
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            
            // Do any additional setup after loading the view.
            // Create a GMSCameraPosition that tells the map to display the
            // coordinate 22.40805,114.2625 at zoom level 15.0.
            let camera = GMSCameraPosition.camera(withLatitude: 22.40805, longitude: 114.2625, zoom: 15.0)
            let mapView = GMSMapView.map(withFrame: self.view.frame, camera: camera)
            self.view.addSubview(mapView)
            

            // Creates a treasure in the map.
            let treasure = GMSMarker()
            treasure.position = CLLocationCoordinate2D(latitude: 22.42250, longitude: 114.2525)
            treasure.title = "Congratulations!"
            treasure.snippet = "You find the treasure!"
            treasure.map = mapView
            treasure.icon = UIImage(named: "Treasurebox")
            if (treasure.isTappable){
                
            }
            
            let item = GMSMarker()
            item.position = CLLocationCoordinate2D(latitude: 22.41111, longitude: 114.2635)
            item.title = "This is not the treasure!"
            item.snippet = "Hints: focus on left side"
            item.map = mapView
            
            let item2 = GMSMarker()
            item2.position = CLLocationCoordinate2D(latitude: 22.41111, longitude: 114.2550)
            item2.title = "This is not the treasure!"
            item2.snippet = "Hints: focus on left side"
            item2.map = mapView
            
            // Show the mission in the map
            let labelMarker = GMSMarker()
            labelMarker.position = CLLocationCoordinate2D(latitude: 22.40805, longitude: 114.2625)
            let label = UILabel()
            label.text = "Try to find the treasure in the map"
            label.sizeToFit()
            label.textColor = UIColor.red
            labelMarker.iconView = label
            labelMarker.map = mapView
    
      }
}
