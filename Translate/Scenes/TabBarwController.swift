//
//  TabBarController.swift
//  Translate
//
//  Created by David Yoon on 2022/01/27.
//

import UIKit

final class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 15.0, *) {
            let appearance = UITabBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = .systemBackground
            
            self.tabBar.standardAppearance = appearance
            self.tabBar.scrollEdgeAppearance = tabBar.standardAppearance
        }
        
        let translateViewController = TranslateViewController()
        
        translateViewController.tabBarItem = UITabBarItem(
            title: NSLocalizedString("Translate", comment: ""),
            image: UIImage(systemName: "mic"),
            selectedImage:  UIImage(systemName: "mic.fill")
        )
        
        let bookmarkViewController = UINavigationController(rootViewController: BookmarkListViewController())
        
        bookmarkViewController.tabBarItem = UITabBarItem(
            title: NSLocalizedString("Bookmark", comment: ""),
            image:  UIImage(systemName: "star"),
            selectedImage:  UIImage(systemName: "star.fill")
        )
        
        
        viewControllers = [translateViewController, bookmarkViewController]
    }


}

