//
//  ViewController.swift
//  COVID19
//
//  Created by Dennis Zubkoff on 05.04.2020.
//  Copyright © 2020 Denis Zubkov. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tabBar.tintColor = .black
        
        let mainVC = MainViewController()
        let mainNVC = UINavigationController(rootViewController: mainVC)
        mainNVC.tabBarItem.image = #imageLiteral(resourceName: "tbMain")
        mainNVC.tabBarItem.title = "Главное"
        mainNVC.navigationItem.title = "Главное"
        
        let statVC = StatViewController()
        let statNVC = UINavigationController(rootViewController: statVC)
        statNVC.tabBarItem.image = #imageLiteral(resourceName: "tbChart")
        statNVC.tabBarItem.title = "Статистика"
        statNVC.navigationItem.title = "Статистика"
        
        let historyVC = HistoryViewController()
        let historyNVC = UINavigationController(rootViewController: historyVC)
        historyNVC.tabBarItem.image = #imageLiteral(resourceName: "tbHistory")
        historyNVC.tabBarItem.title = "История"
        historyNVC.navigationItem.title = "История"
        
        let mapVC = MapViewController()
        let mapNVC = UINavigationController(rootViewController: mapVC)
        mapNVC.tabBarItem.image = #imageLiteral(resourceName: "tbMap")
        mapNVC.tabBarItem.title = "Карта"
        mapNVC.navigationItem.title = "Карта"
        
        
        viewControllers = [mainNVC, statNVC, historyNVC, mapNVC]
    }


}

