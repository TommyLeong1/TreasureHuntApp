//
//  TreasureLocationNavigation.swift
//  TreasureHuntApp
//
//  Created by Tommy on 1/12/23.
//

import UIKit

class Homepage: UIViewController {
    
    lazy var titleView: UIImageView = {
        // set the size of UIImageView.
        let width: CGFloat = self.view.bounds.width
        let height: CGFloat = 100
        
        // set x, y of UIImageView.
        let posX: CGFloat = (self.view.bounds.width - width)/2
        let posY: CGFloat = (self.view.bounds.height - height)/3
        
        // create UIImageView.
        let titleView = UIImageView(frame: CGRect(x: posX, y: posY, width: width, height: height))
        
        // create UIImage.
        let titleImage: UIImage = UIImage(named: "title")!
        
        // set the image to UIImageView.
        titleView.image = titleImage
        
        return titleView
    }()
    
    lazy var TreasureboxView: UIImageView = {
        // set the size of UIImageView.
        let width: CGFloat = self.view.bounds.width/3
        let height: CGFloat = 100
        
        // set x, y of UIImageView.
        let posX: CGFloat = (self.view.bounds.width - width)/2
        let posY: CGFloat = (self.view.bounds.height - height)/2
        
        // create UIImageView.
        let TreasureboxView = UIImageView(frame: CGRect(x: posX, y: posY, width: width, height: height))
        
        // create UIImage.
        let TreasureboxImage: UIImage = UIImage(named: "Treasurebox")!
        
        // set the image to UIImageView.
        TreasureboxView.image = TreasureboxImage
        
        return TreasureboxView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // add titleViex View to view
        self.view.addSubview(self.titleView)
        
        // add Treasurebox View to view
        self.view.addSubview(self.TreasureboxView)
        
        // change background color of view to white
        self.view.backgroundColor = UIColor.white
                                
        // set the button that jump to TreasureLocation1 page
        let Treasure1 = UIButton(frame: CGRect(x: 0, y: 500, width: 400, height: 50))
            Treasure1.setTitle("Treasure Location 1", for: .normal)
            Treasure1.backgroundColor = UIColor.systemYellow
            Treasure1.addTarget(self, action: #selector(Homepage.Treasure1page), for: .touchUpInside)
            self.view.addSubview(Treasure1)
        
        // set the button that jump to TreasureLocation2 page
        let Treasure2 = UIButton(frame: CGRect(x: 0, y: 600, width: 400, height: 50))
            Treasure2.setTitle("Treasure Location 2", for: .normal)
            Treasure2.backgroundColor = UIColor.systemYellow
            Treasure2.addTarget(self, action: #selector(Homepage.Treasure2page), for: .touchUpInside)
        self.view.addSubview(Treasure2)
        
        // set the button that jump to TreasureLocation3 page
        let Treasure3 = UIButton(frame: CGRect(x: 0, y: 700, width: 400, height: 50))
            Treasure3.setTitle("Treasure Location 3", for: .normal)
            Treasure3.backgroundColor = UIColor.systemYellow
            Treasure3.addTarget(self, action: #selector(Homepage.Treasure3page), for: .touchUpInside)
        self.view.addSubview(Treasure3)
    }
        
    // button function that push view to TreasureLocation1
    @objc func Treasure1page() {
        self.navigationController!.pushViewController(TreasureLocation1(), animated: true)
    }
    
    // button function that push view to TreasureLocation2
    @objc func Treasure2page() {
        self.navigationController!.pushViewController(TreasureLocation2(), animated: true)
    }
    
    // button function that push view to TreasureLocation3
    @objc func Treasure3page() {
        self.navigationController!.pushViewController(TreasureLocation3(), animated: true)
    }
}
