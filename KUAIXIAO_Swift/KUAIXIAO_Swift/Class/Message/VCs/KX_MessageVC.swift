//
//  KX_MessageVC.swift
//  KUAIXIAO_Swift
//
//  Created by Macx on 2017/11/21.
//  Copyright © 2017年 Faker. All rights reserved.
//

import UIKit

class KX_MessageVC: UIViewController,UITableViewDataSource,UITableViewDelegate {
    fileprivate lazy var logVModel : KX_LogVModel = KX_LogVModel()
    fileprivate lazy var dataSoucre : NSMutableArray = NSMutableArray()
    fileprivate lazy var tableView : UITableView = {
        let tableviews =  UITableView(frame: self.view.bounds, style:.plain)
        tableviews.delegate = self
        tableviews.dataSource = self
        tableviews.separatorStyle = UITableViewCellSeparatorStyle.none
        return tableviews
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        setIU()

    }


    func setIU() {
        self.view.addSubview(self.tableView)
    }


}





extension KX_MessageVC{
    func loadData(){
        logVModel.requestData {
            self.dataSoucre.addObjects(from: self.logVModel.logGroups)
            self.tableView.reloadData()
        }
    }
}

extension KX_MessageVC{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataSoucre.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let iderntify:String = "LogCellID"
        let cell = KX_LogCell(style:UITableViewCellStyle.default, reuseIdentifier:iderntify)
        cell.iconHeadView?.image = UIImage(named:"icon")
        return cell
        
    }
    
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 200
    }
}
