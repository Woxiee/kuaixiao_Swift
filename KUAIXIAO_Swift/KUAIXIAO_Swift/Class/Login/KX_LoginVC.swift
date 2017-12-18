//
//  KX_LoginVC.swift
//  KUAIXIAO_Swift
//
//  Created by Faker on 2017/10/19.
//  Copyright © 2017年 Faker. All rights reserved.
//

import UIKit
import SJProgressHUD

class KX_LoginVC: UIViewController{

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
        
        let  params  = Dictionary<String,String>()

        FK_RequestTool.sharedInstance .getRequest(urlString: "/api/common/getToken?", params: params, success: { (result) in
            
            guard let dict =  result as? [String: String]else{return}
            let code = dict["code"]
            if(code == "000"){
               FKLog(message: "666")
                if let data = dict["data"] as? [String: Any] {
                    if let token = data["token"]{
                        self._token = token as! String
                        
                    }
                    
                }
            }

            
        }) { (erre) in
            
        }
    }
    
    func getLogInfoRequest() {
        var  params  = Dictionary<String,String>()
        params["account"] = _userTF.text!
        
        params["password"] = _passWordTF.text!
        FK_RequestTool.sharedInstance.postReques(urlString:"/api/login/login?", params: params,
                                                 success: { (result) in
                                                    let code = result["code"] as?String
                                                    if(code == "000"){
                                                        FKLog(message: "666")
                                                        if let data = result["data"]{
                                                            if let openId = data["data"]{
                                                                KX_UserInfo.sharedInstance.openId = (openId as?String)!
                                                            }
                                                            self.getDeveEquipmentRequest()
                                                            
                                                        }
                                                    }
        }, failture: { (erre) in
            
        })
        
    }
    
    func getDeveEquipmentRequest() {
        var  params  = Dictionary<String,String>()
        params["isAuthor"] = "1"
        params["deviceId"] = "68CBA83D-28D4-4BE3-AAAA-DA5B1666241A"
        params["account"] = _userTF.text
        params["openId"] = KX_UserInfo.sharedInstance.openId
        FK_RequestTool.sharedInstance.postReques(urlString: "/api/user/authorization?", params: params, success: { (result) in
            FKLog(message: "666")
            self.view.window?.rootViewController = KX_MainTabBarVC()
        }) { (error) in
            
        }
        
    }
    
}
