//
//  KX_LogCell.swift
//  KUAIXIAO_Swift
//
//  Created by Macx on 2017/11/22.
//  Copyright © 2017年 Faker. All rights reserved.
//

import UIKit

class KX_LogCell: UITableViewCell {
     var logModel :FK_LogModel?{
        didSet{
            guard let  logmModels = logModel else {return}
            guard let iconUrl =  URL(string: logmModels.createUserHeadImage)  else {
                return
            }
            iconHeadView.kf.setImage(with: iconUrl)
            nameLB.text = logmModels.createUserName
            screLabel.text  = "未点评"
            dateLabel.text  = logmModels.createTime
//            todaySummary.text = logmModels.todaySummary
//            tomorrowSummary.text = logmModels.tomorrowSummary
//            logSummary.text = logmModels.logSummary
//            contentDetailView.logModel = logmModels
            self.whc_CellBottomOffset = 40
            self.whc_CellBottomView = bottomview

        }
    }
    
    let iconHeadView =  UIImageView()
    let nameLB = UILabel()
    let dateLabel = UILabel()
    let screLabel = UILabel()
    let markImgeView = UIImageView()
    let todaySummary = UILabel()
    let tomorrowSummary = UILabel()
    let logSummary = UILabel()

//    fileprivate let stackView1 = WHC_StackView()

    let contentDetailView = WHC_StackView()
    let bottomview  = UIView()

    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setUpUI()
      
    }
    
    
    func setUpUI(){
      
        self.contentView.addSubview(iconHeadView)
    
        nameLB.font = font16
        self.contentView.addSubview(nameLB)

        dateLabel.font = font12
        dateLabel.textAlignment = NSTextAlignment.left
        self.contentView.addSubview(dateLabel)

        screLabel.font = font12
        self.contentView.addSubview(screLabel)
        
        self.contentView.addSubview(contentDetailView)
        

//        todaySummary.font = font13
//        self.contentView.addSubview(todaySummary)
//
//
//        tomorrowSummary.font = font13
//        self.contentView.addSubview(tomorrowSummary)
//
//
//        logSummary.font = font13
//        self.contentView.addSubview(logSummary)
        
        self.contentView.addSubview(bottomview)
        
        let margin:CGFloat = 12
        iconHeadView.whc_Left(margin).whc_Top(margin).whc_Width(40).whc_Height(40)
        nameLB.whc_Left(margin, toView: iconHeadView).whc_Top(margin+3).whc_WidthAuto().whc_Height(18)
        screLabel.whc_Right(margin).whc_TopEqual(iconHeadView).whc_WidthAuto().whc_Height(18)
        dateLabel.whc_LeftEqual(nameLB).whc_Top(10, toView: nameLB).whc_Right(margin).whc_Height(15)

        contentDetailView.whc_Left(margin).whc_Top(margin, toView: iconHeadView).whc_Right(margin, toView: self.contentView).whc_HeightAuto()
        
        bottomview.whc_Left(margin).whc_Top(margin, toView: contentDetailView).whc_Right(margin, toView: self.contentView).whc_Height(45)
    }
        
}
