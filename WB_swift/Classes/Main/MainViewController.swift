//
//  MainViewController.swift
//  WB_swift
//
//  Created by ishop02 on 2020/5/22.
//  Copyright © 2020 happy. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        addChildViewControllers()
    }
    
    func addChildViewControllers()
    {
        addChildVC(childVc: HomeVC(),title: "首页",imageName: "tabbar_home")
        addChildVC(childVc: MessageVC(), title: "消息", imageName: "tabbar_message_center")
        addChildVC(childVc: DiscoverVC(), title: "发现", imageName: "tabbar_discover")
        addChildVC(childVc: ProfileVC(), title: "我", imageName: "tabbar_profile")
    }
    
    func addChildVC(childVc:UIViewController, title:String, imageName:String){
        childVc.title = title
        childVc.tabBarItem.image = UIImage(named: imageName)
        childVc.tabBarItem.selectedImage = UIImage(named: imageName + "_highlighted")
        
        let nav = UINavigationController(rootViewController: childVc)
        
        addChild(nav)
    }
    
}
