//
//  MapView.swift
//  TreasureHuntApp
//
//  Created by Tommy on 1/11/23.
//

import UIKit
import GoogleMaps

class MapView: UIViewController,CLLocationManagerDelegate {
    
    var locationManager = CLLocationManager()
    
    // set the current zoom to 15.0
    var Zoom : Float = 15.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ask permission for user location
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
        treasure1.title = "You find the treasure1!"
        treasure1.snippet = "Please click Confirm Treasure Box to open the treasure1!"
        treasure1.map = mapView
        treasure1.icon = UIImage(named: "Treasurebox")
        
        // creates treasure2 in the map.
        let treasure2 = GMSMarker()
        treasure2.position = CLLocationCoordinate2D(latitude: 22.408425, longitude: 114.222716)
        treasure2.title = "You find the treasure2!"
        treasure2.snippet = "Please click Confirm Treasure Box to open the treasure2!"
        treasure2.map = mapView
        treasure2.icon = UIImage(named: "Treasurebox")
        
        // creates treasure3 in the map.
        let treasure3 = GMSMarker()
        treasure3.position = CLLocationCoordinate2D(latitude: 22.387694, longitude: 114.208349)
        treasure3.title = "You find the treasure3!"
        treasure3.snippet = "Please click Confirm Treasure Box to open the treasure3!"
        treasure3.map = mapView
        treasure3.icon = UIImage(named: "Treasurebox")
    }
}
