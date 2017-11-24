//
//  KX_LogCell.swift
//  KUAIXIAO_Swift
//
//  Created by Macx on 2017/11/22.
//  Copyright © 2017年 Faker. All rights reserved.
//

import UIKit

class KX_LogCell: UITableViewCell {

    var iconHeadView : UIImageView?
//    var nameLB:UILabel
//    var timeLb:UILabel
//    var markLB:UILabel
//    var markImgeView:UIImageView
//    var commtemsLB:UILabel
//    var contentDetailView:UIView
//    var commentsDetailView:UIView
//    var fileView:UIView
//    var bottomview :UIView

    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setUpUI()
      
    }
    
    
    func setUpUI(){
        iconHeadView = UIImageView.init()
        self.addSubview(iconHeadView!)

        
        
    }
    
    
  

}
