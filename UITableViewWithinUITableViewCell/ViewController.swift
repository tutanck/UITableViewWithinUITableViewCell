//
//  ViewController.swift
//  UITableViewWithinUITableViewCell
//
//  Created by Zenika on 21/07/2017.
//  Copyright © 2017 DevArtisant. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
     }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
     }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:CustomCell? = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as?  CustomCell
        if cell == nil {
            cell = CustomCell(style: UITableViewCellStyle.default, reuseIdentifier: "CustomCell")
        }
        cell?.dataArr = ["subMenu->1","subMenu->2","subMenu->3","subMenu->4","subMenu->5"]
        return cell!
    }
    
    func  tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }

}

