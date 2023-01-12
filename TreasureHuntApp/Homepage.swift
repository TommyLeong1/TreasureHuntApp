//
//  TreasureLocationNavigation.swift
//  TreasureHuntApp
//
//  Created by Tommy on 1/12/23.
//

import UIKit

class Homepage: UIViewController {
    
    lazy var titleView: UIImageView = {
        // Set the size of UIImageView.
        let width: CGFloat = self.view.bounds.width
        let height: CGFloat = 100
        
        // Set x, y of UIImageView.
        let posX: CGFloat = (self.view.bounds.width - width)/2
        let posY: CGFloat = (self.view.bounds.height - height)/3
        
        // Create UIImageView.
        let titleView = UIImageView(frame: CGRect(x: posX, y: posY, width: width, height: height))
        
        // Create UIImage.
        let titleImage: UIImage = UIImage(named: "title")!
        
        // Set the image to UIImageView.
        titleView.image = titleImage
        
        return titleView
    }()
    
    lazy var TreasureboxView: UIImageView = {
        // Set the size of UIImageView.
        let width: CGFloat = self.view.bounds.width/3
        let height: CGFloat = 100
        
        // Set x, y of UIImageView.
        let posX: CGFloat = (self.view.bounds.width - width)/2
        let posY: CGFloat = (self.view.bounds.height - height)/2
        
        // Create UIImageView.
        let TreasureboxView = UIImageView(frame: CGRect(x: posX, y: posY, width: width, height: height))
        
        // Create UIImage.
        let TreasureboxImage: UIImage = UIImage(named: "Treasurebox")!
        
        // Set the image to UIImageView.
        TreasureboxView.image = TreasureboxImage
        
        return TreasureboxView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add titleViex View to view
        self.view.addSubview(self.titleView)
        
        // Add Treasurebox View to view
        self.view.addSubview(self.TreasureboxView)
        
        // Change background color of view to white
        self.view.backgroundColor = UIColor.white
                                
        // set the button that jump to TreasureLocation1 page
        let Treasure1 = UIButton(frame: CGRect(x: 0, y: 500, width: 400, height: 50))
            Treasure1.setTitle("Treasure Location 1", for: .normal)
            Treasure1.backgroundColor = UIColor.systemYellow
            Treasure1.addTarget(self, action: #selector(Homepage.Treasure1page), for: .touchUpInside)
            self.view.addSubview(Treasure1)
        }
        
        // button function that push view to TreasureLocation1
        @objc func Treasure1page() {
            self.navigationController!.pushViewController(TreasureLocation1(), animated: true)
        }
}
