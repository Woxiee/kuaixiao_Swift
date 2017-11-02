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
        self.getLogInfoRequest()
     
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
                self.view.window?.rootViewController = KX_MainTabBarVC()

            })
        
        }
        
    }
    
    func getTokenReqeust()  {
        
        var  params  = Dictionary<String,NSObject>()
        params["appId"] = APPID as NSObject
        params["deviceName"] = FK_UIDeviceExtension.current.modelName as NSObject
        params["timeStamp"] = TIMESTAMP as NSObject
        params["imei"] = "888888" as NSObject
        params["version"] = "1.0.0" as NSObject

        FK_RequestTool.sharedInstance .getRequest(urlString: "\(FKURL)/api/common/getToken?", params: params, success: { (result) in
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
        
        
        
    }
    
  
}
