//
//  KX_LogVModel.swift
//  KUAIXIAO_Swift
//
//  Created by Macx on 2017/11/14.
//  Copyright © 2017年 Faker. All rights reserved.
//

import UIKit

class KX_LogVModel: NSObject {
    lazy var logGroups :[FK_LogModel] = [FK_LogModel]()
    
    
    func loadLogGroupData(URLString: String, params:[String : Any]? = nil, finishedCallback: @escaping ()->()) {
        FK_RequestTool.sharedInstance.postReques(urlString: URLString, params:params!, success: { (result) in
            
        }) { (error) in
            
        }
        
    }
    
    
    
    func requestData(_ finishCallBack : @escaping () -> ()) {
        var  params  = Dictionary<String,String>()
        params["searchName"] = ""
        params["isreply"] = ""
        params["logType"] = ""
        params["searchDate"] = ""
        params["searchValue"] = ""
        params["sourceType"] = "workLog"
        params["openId"] = KX_UserInfo.sharedInstance.openId
        FK_RequestTool.sharedInstance.postReques(urlString: "/api/worklog/fetchWorkLogsByCondition?", params: params, success: { (result) in
            FKLog(message: "666")
           finishCallBack()

        }) { (error) in
            
        }
    }

}
