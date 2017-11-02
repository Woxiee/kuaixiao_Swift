//
//  FK_RequestTool.swift
//  KUAIXIAO_Swift
//
//  Created by Macx on 2017/10/26.
//  Copyright © 2017年 Faker. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

private let RequestToolShareInstance = FK_RequestTool()

class FK_RequestTool: NSObject {
    class var sharedInstance : FK_RequestTool {
        return RequestToolShareInstance
    }
    
}

extension FK_RequestTool{
    //MARK: - GET 请求
    //    let tools : NetworkRequest.shareInstance!
    func getRequest(urlString:String, params :[String:Any],success: @escaping(_ response:[String :AnyObject])->(),failture:@escaping(_ error:Error)->()){
        //使用Alamofire进行网络请求时，调用该方法的参数都是通过getRequest(urlString， params, success :, failture :）传入的，而success传入的其实是一个接受           [String : AnyObject]类型 返回void类型的函数
        Alamofire.request(urlString, method:.get, parameters:params).responseJSON { (response) in
            switch response.result{
            case .success(let value):
                //当响应成功是，使用临时变量value接受服务器返回的信息并判断是否为[String: AnyObject]类型 如果是那么将其传给其定义方法中的success
                if let value = response.result.value as? [String:AnyObject]{
                    
                    success(value )
                }
                let json =  JSON(value)
                    FKLog(message: json)

            case .failure(let error):
                failture(error)
                print("error:\(error)")
            }
        }
            
      
    }
      //MARK: - POST 请求
    func postReques(urlString:String, params:[String:Any], success: @escaping(_ response: [String:AnyObject])->(), failture:@escaping(_ error:Error)->()) {
        Alamofire.request(urlString, method: .post, parameters: params).responseJSON { (response) in
            switch response.result{
            case .success(let value):
                //当响应成功是，使用临时变量value接受服务器返回的信息并判断是否为[String: AnyObject]类型 如果是那么将其传给其定义方法中的success
                if let value = response.result.value as? [String:AnyObject]{
                    
                    success(value )
                }
                let json =  JSON(value)
                FKLog(message: json)
                
            case .failure(let error):
                failture(error)
                print("error:\(error)")
            }

        }
    
    }
}
    


