//
//  KX_UserInfo.swift
//  KUAIXIAO_Swift
//
//  Created by Macx on 2017/11/7.
//  Copyright © 2017年 Faker. All rights reserved.
//

import UIKit

class KX_UserInfo: NSObject {
    var  openId:String = String()
    var  userName:String = String()
    var  pwd:String = String()

    
    ///单例
    static let sharedInstance = KX_UserInfo()
}
