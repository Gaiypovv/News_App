//
//  MainTabBarViewController.swift
//  News_App
//
//  Created by Eldar Gaiypov on 4/4/24.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.tintColor = .white
        tabBar.backgroundColor = .systemGray
        tabBar.frame.size.height = 87

        let layer = CAShapeLayer()
        let path = UIBezierPath(roundedRect: tabBar.bounds, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 20.0, height: 20.0))
        layer.path = path.cgPath
        tabBar.layer.mask = layer
        
        viewControllers = [
            createController(viewController: HomeViewController(), imageName: "house", title: "Home"),
            createController(viewController: FavoriteViewController(), imageName: "star.circle", title: "Favorites")
        ]
    }
    
    fileprivate func createController(viewController: UIViewController, imageName: String, title: String) -> UIViewController {
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(systemName: imageName)
        return navController
    }
}
