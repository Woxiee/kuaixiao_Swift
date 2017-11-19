//
//  KX_LogVModel.swift
//  KUAIXIAO_Swift
//
//  Created by Macx on 2017/11/14.
//  Copyright © 2017年 Faker. All rights reserved.
//

import UIKit

class KX_LogVModel: NSObject {
    lazy var logGroups :[WorkLogList] = [WorkLogList]()
    
    
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
            guard let dict = result as? [String : Any] else{return}
            let  code = dict["code"] as? String
            if (code == "000") {
                let data = dict["data"] as? [String : Any]
                let dataReult = data?["data"] as? [String : Any]
                let dataList  = dataReult?["workLogList"] as? [[String : AnyObject]]
                let arrayModel = [WorkLogList].sexy_json(dataReult,keyPath: "workLogList")
                for item in dataList!{
                    let model = WorkLogList.sexy_json(item)
                    self.logGroups.append(model!)
                }
//                let arrayModel = dataList?.sexy_array()


                
            }
            
           finishCallBack()

        }) { (error) in
            
        }
    }

}
