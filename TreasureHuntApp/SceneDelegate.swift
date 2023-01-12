//
//  SceneDelegate.swift
//  TreasureHuntApp
//
//  Created by Tommy on 1/11/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
               
         guard let windowScene = (scene as? UIWindowScene) else { return }
         window = UIWindow(frame: UIScreen.main.bounds)
                         
         //create a tab controller
         let tabController = UITabBarController()
         
         //set the first page
         let firstVC = Homepage()
         let firstTabNavVC = UINavigationController(rootViewController: firstVC)
        firstTabNavVC.tabBarItem = UITabBarItem(title: "Map", image:
            UIImage(systemName: "s.square.fill"), selectedImage: nil)
        
         //set the second page
         let secondVC = ViewController()
         secondVC.tabBarItem = UITabBarItem(title: "Item2", image:
            UIImage(systemName: "s.square.fill"), selectedImage: nil)
        
         //set the third page
         let thirdVC = MapView2()
         thirdVC.tabBarItem = UITabBarItem(title: "Item3", image:
            UIImage(systemName: "s.square.fill"), selectedImage: nil)
        
        //set the fourth page
        let fourthVC = MapView3()
        fourthVC.tabBarItem = UITabBarItem(title: "Item3", image:
           UIImage(systemName: "s.square.fill"), selectedImage: nil)
                
        
         //build the tab view
         tabController.viewControllers = [
             firstTabNavVC,
             secondVC,
             thirdVC,
             fourthVC
         ]
        
        
        
         window?.rootViewController = tabController
         window?.makeKeyAndVisible()
         window?.windowScene = windowScene
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

