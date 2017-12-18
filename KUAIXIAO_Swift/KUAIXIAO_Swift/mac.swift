//
//  mac.swift
//  KUAIXIAO_Swift
//
//  Created by Macx on 2017/10/30.
//  Copyright © 2017年 Faker. All rights reserved.
//

import Foundation
import UIKit
import SJProgressHUD
import SexyJson
import Kingfisher
/*********颜色***********/
//RGB转换
func RGB(r:CGFloat,g:CGFloat,b:CGFloat) ->UIColor{
    //
    return UIColor(red: r/225.0, green: g/225.0, blue: b/225.0, alpha: 1.0)
}

//主题色
public let THEME_COLOR=UIColor(red: 33/255.0, green: 41/255.0, blue: 54/255.0, alpha: 1.0)
//背景色
public let BG_COLOR=UIColor(red: 246/225.0, green: 246/225.0, blue: 246/225.0, alpha: 1.0)
//分割线颜色
public let LINE_COLOR=UIColor(red: 217/225.0, green: 217/225.0, blue: 217/225.0, alpha: 1.0)

/*********尺寸***********/

//设备屏幕尺寸
public let SCREEN_WIDTH=UIScreen.main.bounds.size.width
public let SCREEN_HEIGHT=UIScreen.main.bounds.size.height


public let APPID =  "100018"
public let APPKEY =  "4adcb488b4deccfda47c3f3fdfca8ce9"
public let TIMESTAMP =  "2016"
public let VERSIONS =  "VERSIONS"
public let TOKEN =  "3333"
public let KYPageSize =  "10"


//获取视图尺寸
public func VIEW_WIDTH(view:UIView)->CGFloat{
    return view.frame.size.width
}
public func VIEW_HEIGHT(view:UIView)->CGFloat{
    return view.frame.size.height
}


/// 颜色
/// 正常色
public let  BACKGROUND_COLOR =  RGB(r: 238, g: 241, b: 246)

///蓝色
public let  BACKGROUND_COLORHL =  RGB(r: 77, g: 107, b: 171)

/// 明细字体颜色（灰色）
public let  DETAILTEXTCOLOR =  RGB(r: 153, g: 115, b: 153)

/// CRM— 红色
public let  TITLETEXTREDCOLOR =  RGB(r: 230, g: 97, b: 100)

/// /// 背景为青色
public let  BAGKGROUFBGREENCOLOR =  RGB(r: 92, g: 202, b: 199)

/// 新建字体  浅色黑
public let  TITLETEXTLOWCOLOR =  RGB(r: 78, g: 78, b: 78)
/// 标题字体颜色（黑色）
public let TITLETEXTCOLOR  = UIColor.black

/// 字体
public let font12 = UIFont.systemFont(ofSize: 12)
public let font13 = UIFont.systemFont(ofSize: 13)
public let font14 = UIFont.systemFont(ofSize: 14)
public let font15 = UIFont.systemFont(ofSize: 15)
public let font16 = UIFont.systemFont(ofSize: 16)

func FKLog<T>(message: T,
                 logError: Bool = false,
                 file: String = #file,
                 method: String = #function,
                 line: Int = #line)
{
    if logError {
        print("\((file as NSString).lastPathComponent)[\(line)], \(method): \(message)")
    } else {
        #if DEBUG
            print("\((file as NSString).lastPathComponent)[\(line)], \(method): \(message)")
        #endif
    }
}

//let FKURL = "http://192.168.2.38"               //吴放
//let FKURL = "http://192.168.2.13:8011"     //13
let FKURL = "http://open.fecxiao.com"      //正式服务器



//#define TOKEN     @"3333"
//#define SIGN      @"4444"
//#define KYPageSize @"10"   //用于下啦刷新的控制下拉的属性

