//
//  homepage.swift
//  TreasurehuntApp
//
//  Created by Tommy on 1/11/23.
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
        
        // Change background color of view
        self.view.backgroundColor = UIColor.white
        
        let button:UIButton = UIButton(frame: CGRect(x: 120, y: 550, width: 150, height: 80))
        button.backgroundColor = .systemYellow
        button.setTitle("Mission content", for: .normal)
        button.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    @objc func buttonClicked() {
        let alert = UIAlertController(title: "Mission content", message: "You need to find all the treasures in the maps", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
}
