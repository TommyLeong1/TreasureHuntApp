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
        
        // creates a treasure in the map.
        let treasure = GMSMarker()
        treasure.position = CLLocationCoordinate2D(latitude: 22.4216, longitude: 114.2323)
        treasure.title = "You find the treasure!"
        treasure.snippet = "Please click Confirm Treasure Box to open the treasure!"
        treasure.map = mapView
        treasure.icon = UIImage(named: "Treasurebox")
        
        // set a alert to remind user find the treasure
        let alert = UIAlertController(title: "Congratulations!", message: "You find the treasure!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
        }))
        
        // alert if user find the treasure
        if (center.latitude == treasure.position.latitude && center.longitude == treasure.position.longitude){
            self.present(alert, animated: true, completion: nil)
            treasure.icon = UIImage(named: "openbox")
        }
    }
}
