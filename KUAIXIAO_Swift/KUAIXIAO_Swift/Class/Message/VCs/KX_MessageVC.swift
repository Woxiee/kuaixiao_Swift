//
//  KX_MessageVC.swift
//  KUAIXIAO_Swift
//
//  Created by Macx on 2017/10/26.
//  Copyright © 2017年 Faker. All rights reserved.
//

import UIKit

class KX_MessageVC: UIViewController {
    fileprivate lazy var logVModel : KX_LogVModel = KX_LogVModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }


}

extension KX_MessageVC{
    
    func loadData(){
        logVModel.requestData {
        
        }
    }
}
