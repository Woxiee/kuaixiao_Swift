//
//  KX_ContentDetailView.swift
//  KUAIXIAO_Swift
//
//  Created by Macx on 2017/11/28.
//  Copyright © 2017年 Faker. All rights reserved.
//

import UIKit

class KX_ContentDetailView: UIView {
    let titleLb = UILabel()
    let contenLB = UILabel()
    var logModel : FK_LogModel?{
        didSet{
            guard let  logmModels = logModel else {return}
            titleLb.text = "今日计划"
            contenLB.text = logmModels.todaySummary
//            logDate
        }
    }
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setUpUI()

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setUpUI(){
        
//        var lastView : Any  = self
//        let margin:CGFloat = 10
//        for i in 0...2 {
//           let  titlelB = UILabel()
//                titlelB.font = font13
//                self.addSubview(titlelB)
//
//            let contenlb = UILabel()
//               contenlb.font = font13
//            self.addSubview(contenlb)
//
//            titlelB.whc_Left(0).whc_Top(0, toView: lastView as? UIView ).whc_Right(0, toView: self).whc_Height(margin*2)
//
//            contenlb.whc_Left(0).whc_Top(margin - 4, toView: titlelB).whc_Right(0, toView: self).whc_HeightAuto()
//
//            titlelB.text = "今日计划"
//            contenlb.text = "测试数据"
//            lastView = contenlb as? UILabel
//
//
//        }
        titleLb.font = font13
        self.addSubview(titleLb)


        contenLB.font = font15
        self.addSubview(contenLB)

        titleLb.whc_Left(0).whc_Top(0, toView: self).whc_Right(0, toView: self).whc_Height(18)
        contenLB.whc_Left(0).whc_Top(8, toView: titleLb).whc_Right(0, toView: self).whc_HeightAuto().whc_Bottom(10)
    }

    
    
}
