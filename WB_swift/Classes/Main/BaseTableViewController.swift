//
//  BaseTableViewController.swift
//  WB_swift
//
//  Created by ishop02 on 2020/5/22.
//  Copyright © 2020 happy. All rights reserved.
//

import UIKit

class BaseTableViewController: UITableViewController {
    
    var islogin = false
    
    var visitorView : VisitorView?
    
    override func loadView() {
        islogin ? super.loadView() : setupVisitorView()
    }

    private func setupVisitorView(){
        let otherView = VisitorView.visitorView()
        view = otherView
    }

}
