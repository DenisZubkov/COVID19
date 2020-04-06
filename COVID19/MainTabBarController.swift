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
        view.backgroundColor = .white
        
        viewControllers = [
            generate(viewController: MainViewController(), image: #imageLiteral(resourceName: "tbMain"), title: "Главная"),
            generate(viewController: StatViewController(), image: #imageLiteral(resourceName: "tbChart"), title: "Статистика"),
            generate(viewController: StatViewController(), image: #imageLiteral(resourceName: "tbHistory"), title: "История"),
            generate(viewController: StatViewController(), image: #imageLiteral(resourceName: "tbMap"), title: "Карта"),
        ]
    }

    private func generate(viewController: UIViewController, image: UIImage, title: String) -> UIViewController {
        let navigationViewController = UINavigationController(rootViewController: viewController)
        navigationViewController.tabBarItem.image = image
        navigationViewController.tabBarItem.title = title
        viewController.navigationItem.title = title
        navigationViewController.navigationBar.prefersLargeTitles = true
        return navigationViewController
    }

}

