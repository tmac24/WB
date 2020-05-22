//
//  DiscoverVC.swift
//  WB_swift
//
//  Created by ishop02 on 2020/5/22.
//  Copyright © 2020 happy. All rights reserved.
//

import UIKit

class DiscoverVC: BaseTableViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()

        if !islogin{
            visitorView?.setupVisitorInfo(imageName: "visitordiscover_image_message", title: "登录后，最新、最热微博尽在掌握，不再会与实事潮流擦肩而过")
        }
    }
    
}
