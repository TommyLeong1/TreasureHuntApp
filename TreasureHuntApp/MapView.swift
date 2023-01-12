//
//  ViewController.swift
//  TreasureHuntApp
//
//  Created by Tommy on 1/11/23.
//

import UIKit
import GoogleMaps

class MapView: UIViewController,CLLocationManagerDelegate {
    
    var locationManager = CLLocationManager()
    var Zoom : Float = 15.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // aks permission for user location
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
    }
    
    private func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        print("Error" + error.description)
    }
    
    // get user location
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let userLocation = locations.last
        let center = CLLocationCoordinate2D(latitude: userLocation!.coordinate.latitude, longitude: userLocation!.coordinate.longitude)
        
        let camera = GMSCameraPosition.camera(withLatitude: userLocation!.coordinate.latitude,
                                              longitude: userLocation!.coordinate.longitude, zoom: Zoom)
        let mapView = GMSMapView.map(withFrame: CGRectZero, camera: camera)
        mapView.isMyLocationEnabled = true
        self.view = mapView
        
        // a marker to show user's current location
        let mylocationmarker = GMSMarker()
        mylocationmarker.position = center
        mylocationmarker.title = "Here is your current location"
        mylocationmarker.snippet = "Try to find treasure in the map!"
        mylocationmarker.map = mapView
        
        // current location button
        mapView.settings.myLocationButton = true
        
        locationManager.stopUpdatingLocation()
        
        // creates treasure1 in the map.
        let treasure1 = GMSMarker()
        treasure1.position = CLLocationCoordinate2D(latitude: 22.4216, longitude: 114.2323)
        treasure1.title = "You find the treasure!"
        treasure1.snippet = "Please click Confirm Treasure Box to open the treasure!"
        treasure1.map = mapView
        treasure1.icon = UIImage(named: "Treasurebox")
        
        // creates treasure2 in the map.
        let treasure2 = GMSMarker()
        treasure2.position = CLLocationCoordinate2D(latitude: 22.408425, longitude: 114.222716)
        treasure2.title = "You find the treasure!"
        treasure2.snippet = "Please click Confirm Treasure Box to open the treasure!"
        treasure2.map = mapView
        treasure2.icon = UIImage(named: "Treasurebox")
        
        // set a alert to remind user find the treasure
        let alert = UIAlertController(title: "Congratulations!", message: "You find the treasure!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
        }))
        
        // alert if user find the treasure1
        if (center.latitude == treasure1.position.latitude && center.longitude == treasure1.position.longitude){
            self.present(alert, animated: true, completion: nil)
            treasure1.icon = UIImage(named: "openbox")
        }
        
        // alert if user find the treasure2
        if (center.latitude == treasure2.position.latitude && center.longitude == treasure2.position.longitude){
            self.present(alert, animated: true, completion: nil)
            treasure2.icon = UIImage(named: "openbox")
        }
    }
}
