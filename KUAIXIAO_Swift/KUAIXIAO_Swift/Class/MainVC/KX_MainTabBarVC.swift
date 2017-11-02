//
//  KX_MainTabBarVC.swift
//  KUAIXIAO_Swift
//
//  Created by Macx on 2017/10/26.
//  Copyright © 2017年 Faker. All rights reserved.
//

import UIKit

class KX_MainTabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChildViewController(childController: KX_MessageVC(), title: "消息", imageName:  "messga_nomal", imageHightName: "message_select")
        addChildViewController(childController: KX_AddressVC(), title: "通讯录", imageName: "address_nomal", imageHightName: "address_select")
        addChildViewController(childController: KX_WorkVC(), title: "办公", imageName: "wk_nomal", imageHightName: "wk_Select")

        addChildViewController(childController: KX_MeViewController(), title: "办公", imageName: "me_nomal", imageHightName: "me_select")

        

    }


    
    func addChildViewController(childController: UIViewController, title:String,imageName:String, imageHightName:String){
        childController.title  = title;
        childController.tabBarItem.image = UIImage(named:imageName)
        childController.tabBarItem.selectedImage = UIImage(named:imageHightName)
        let nav = UINavigationController()
        nav.addChildViewController(childController)
        addChildViewController(nav)
        

        
     
    }

}
