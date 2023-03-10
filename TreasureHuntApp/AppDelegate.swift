//
//  AppDelegate.swift
//  TreasureHuntApp
//
//  Created by Tommy on 1/11/23.
//

import UIKit
import GoogleMaps

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
  //setting google api key
  let googleApiKey = "AIzaSyBmuv-_QM0m8wKNKpZOS6q_-2bcomI44c0"
  
  var window: UIWindow?
  
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        // privide google api key
        GMSServices.provideAPIKey(googleApiKey)
        
        return true
      }
}

