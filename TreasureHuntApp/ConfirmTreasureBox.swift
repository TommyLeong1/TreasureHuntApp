//
//  homepage.swift
//  TreasurehuntApp
//
//  Created by Tommy on 1/11/23.
//

import UIKit
import GoogleMaps

class ConfirmTreasureBox: UIViewController,CLLocationManagerDelegate {
    
    var locationManager = CLLocationManager()
    
    // set the current zoom to 15.0
    var Zoom : Float = 15.0
    
    override func viewWillAppear(_: Bool) {
        super.viewWillAppear(true)
        
        // aks permission for user location
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
    }
    
    // get user location
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let userLocation = locations.last
        let center = CLLocationCoordinate2D(latitude: userLocation!.coordinate.latitude, longitude: userLocation!.coordinate.longitude)
        
        // set the camera with user location
        let camera = GMSCameraPosition.camera(withLatitude: userLocation!.coordinate.latitude,
                                              longitude: userLocation!.coordinate.longitude, zoom: Zoom)
        let mapView = GMSMapView.map(withFrame: CGRectZero, camera: camera)
        mapView.isMyLocationEnabled = true
        self.view = mapView        
        
        locationManager.stopUpdatingLocation()
        
        // creates a treasure1 in the map.
        let treasure1 = GMSMarker()
        treasure1.position = CLLocationCoordinate2D(latitude: 22.4216, longitude: 114.2323)
        treasure1.title = "Congratulations!"
        treasure1.snippet = "You find the treasure1!"
        treasure1.map = mapView
        treasure1.icon = UIImage(named: "Treasurebox")
        
        // creates treasure2 in the map.
        let treasure2 = GMSMarker()
        treasure2.position = CLLocationCoordinate2D(latitude: 22.408425, longitude: 114.222716)
        treasure2.title = "Congratulations!"
        treasure2.snippet = "You find the treasure2!"
        treasure2.map = mapView
        treasure2.icon = UIImage(named: "Treasurebox")
        
        // creates treasure3 in the map.
        let treasure3 = GMSMarker()
        treasure3.position = CLLocationCoordinate2D(latitude: 22.387694, longitude: 114.208349)
        treasure3.title = "Congratulations!"
        treasure3.snippet = "You find the treasure3!"
        treasure3.map = mapView
        treasure3.icon = UIImage(named: "Treasurebox")
        
        // set the alert to remind user find the treasure1
        let treasure1alert = UIAlertController(title: "Congratulations!", message: "You find the treasure1!", preferredStyle: .alert)
        treasure1alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
        }))
        
        // set the alert to remind user find the treasure2
        let treasure2alert = UIAlertController(title: "Congratulations!", message: "You find the treasure2!", preferredStyle: .alert)
        treasure2alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
        }))
        
        // set the alert to remind user find the treasure3
        let treasure3alert = UIAlertController(title: "Congratulations!", message: "You find the treasure3!", preferredStyle: .alert)
        treasure3alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
        }))
        
        // alert if user find the treasure1
        if (center.latitude == treasure1.position.latitude && center.longitude == treasure1.position.longitude){
            self.present(treasure1alert, animated: true, completion: nil)
            treasure1.icon = UIImage(named: "openbox")
        }
        
        // alert if user find the treasure2
        if (center.latitude == treasure2.position.latitude && center.longitude == treasure2.position.longitude){
            self.present(treasure2alert, animated: true, completion: nil)
            treasure2.icon = UIImage(named: "openbox")
        }
        
        // alert if user find the treasure3
        if (center.latitude == treasure3.position.latitude && center.longitude == treasure3.position.longitude){
            self.present(treasure3alert, animated: true, completion: nil)
            treasure3.icon = UIImage(named: "openbox")
        }
    }
}
