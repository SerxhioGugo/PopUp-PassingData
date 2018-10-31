//
//  ViewController.swift
//  PopUp&PassingData
//
//  Created by Serxhio Gugo on 10/30/18.
//  Copyright © 2018 Serxhio Gugo. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        setupTabBar()
    }

    private func setupTabBar() {

        let firstVC = FirstVC()
        firstVC.tabBarItem.image = UIImage(named: "1gray")

        firstVC.tabBarItem.title = "Protocol"
        
        let secondVC = SecondVC()
        secondVC.tabBarItem.image = UIImage(named: "2gray")
        secondVC.tabBarItem.title = "Notifications"
        
        let thirdVC = ThirdVC()
        thirdVC.tabBarItem.image = UIImage(named: "3gray")
        thirdVC.tabBarItem.title = "Callback"
        
        viewControllers = [firstVC, secondVC, thirdVC]
        
        guard let items = tabBar.items else { return }
        for item in items {
            item.imageInsets = UIEdgeInsets(top: 1, left: 0, bottom: 0, right: 0)
            item.titlePositionAdjustment = UIOffset(horizontal: 1, vertical: 2)
        }
    }
}

