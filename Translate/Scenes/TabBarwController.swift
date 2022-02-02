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
        
        let translateViewController = TranslateViewController()
        
        translateViewController.tabBarItem = UITabBarItem(
            title: "Translate",
            image: UIImage(systemName: "mic"),
            selectedImage:  UIImage(systemName: "mic.fill")
        )
        
        let bookmarkViewController = UINavigationController(rootViewController: BookmarkListViewController())
        
        bookmarkViewController.tabBarItem = UITabBarItem(
            title: "Bookmark",
            image:  UIImage(systemName: "star"),
            selectedImage:  UIImage(systemName: "star.fill")
        )
        
        
        viewControllers = [translateViewController, bookmarkViewController]
    }


}

