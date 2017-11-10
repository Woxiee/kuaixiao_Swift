//
//  KX_LoginVC.swift
//  KUAIXIAO_Swift
//
//  Created by Faker on 2017/10/19.
//  Copyright © 2017年 Faker. All rights reserved.
//

import UIKit
import SJProgressHUD

class KX_LoginVC: UIViewController {

    @IBOutlet weak var _userTF: UITextField!
    @IBOutlet weak var _passWordTF: UITextField!
    
    @IBOutlet weak var _logBtn: UIButton!
    
    var _token:String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
        self.setConfiguration()
        self.getTokenReqeust()
     
    }
    
    func setup() {
        
    }
 
    
    func setConfiguration(){
        
    }

    @IBAction func didClickLogBtn(_ sender: Any) {
        
        SJProgressHUD.showWaiting("正在加载中......")

        if (_userTF.text?.characters.count != 0)
        {
            DispatchQueue.main.asyncAfter(deadline:.now() + 3, execute: {
                SJProgressHUD.dismiss()
//                self.view.window?.rootViewController = KX_MainTabBarVC()
                self.getLogInfoRequest()

            })
        
        }
        
    }
    
    func getTokenReqeust()  {
        
        var  params  = Dictionary<String,NSObject>()

        FK_RequestTool.sharedInstance .getRequest(urlString: "/api/common/getToken?", params: params, success: { (result) in
            let code = result["code"] as?String
            if(code == "000"){
               FKLog(message: "666")
                if let data = result["data"]{
                    if let token = data["token"]{
                        self._token = token as?String
                        
                    }
                    
                }
            }

            
        }) { (erre) in
            
        }
    }
    
    func getLogInfoRequest() {
        var  params  = Dictionary<String,AnyObject>()
        params["account"] = _userTF.text! as? AnyObject
        
        params["password"] = _passWordTF.text! as? AnyObject
        FK_RequestTool.sharedInstance.postReques(urlString:"/api/login/login?", params: params,
                                                 success: { (result) in
                                                    let code = result["code"] as?String
                                                    if(code == "000"){
                                                        FKLog(message: "666")
                                                        if let data = result["data"]{
                                                            if let openId = data["data"]{
                                                                KX_UserInfo.sharedInstance.openId = (openId as?String)!
                                                                
                                                              
                                                            }
                                                            self.getDeveEquipmentRequest(isAuthor: "222")
                                                            
                                                        }
                                                    }

        }, failture: { (erre) in
            
        })
        
    }
    
    
    func getDeveEquipmentRequest(isAuthor:String) {
        var  params  = Dictionary<String,AnyObject>()
        params["isAuthor"] = "1" as AnyObject
//        125         let str2=String(format: "%i+%.1f=?", xx, yy)
        params["deviceId"] = "68CBA83D-28D4-4BE3-AAAA-DA5B1666241A" as AnyObject
        params["account"] = _userTF.text as AnyObject
        params["account"] = KX_UserInfo.sharedInstance.openId as AnyObject

    }
    
}
