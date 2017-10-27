//
//  KX_LoginVC.swift
//  KUAIXIAO_Swift
//
//  Created by Faker on 2017/10/19.
//  Copyright © 2017年 Faker. All rights reserved.
//

import UIKit

class KX_LoginVC: UIViewController {

    @IBOutlet weak var _userTF: UITextField!
    @IBOutlet weak var _passWordTF: UITextField!
    
    @IBOutlet weak var _logBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
        self.setConfiguration()
     
    }
    
    func setup() {
        
    }
 
    
    func setConfiguration(){
        
    }

    @IBAction func didClickLogBtn(_ sender: Any) {
        if (_userTF.text?.characters.count != 0)
        {
            self.view.window?.rootViewController = KX_MainTabBarVC()
        }
        
    }
    
  
}
