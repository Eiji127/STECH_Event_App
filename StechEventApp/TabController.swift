//
//  TabController.swift
//  StechEventApp
//
//  Created by 白数叡司 on 2020/12/27.
//

import UIKit

class TabController: UITabBarController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabBar()
    }
    
    // MARK: - Helpers
    
    func configureTabBar() {
        let feed = MainViewController(collectionViewLayout: UICollectionViewFlowLayout())
        let navEvent = templateNavigationController(image: .actions, rootViewController: feed)
        let user = UserViewController(config: .userSearch)
        let navUser = templateNavigationController(image: .actions, rootViewController: user)
        
        viewControllers = [navEvent, navUser]
    }

    func templateNavigationController(image: UIImage, rootViewController: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = image
        nav.navigationBar.barTintColor = .white
        
        return nav
    }
}
