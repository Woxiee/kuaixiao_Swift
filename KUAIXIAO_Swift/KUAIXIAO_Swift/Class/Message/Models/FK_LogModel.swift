//
//  FK_LogModel.swift
//  KUAIXIAO_Swift
//
//  Created by Macx on 2017/11/14.
//  Copyright © 2017年 Faker. All rights reserved.
//

import UIKit
import SexyJson



/**
 * Copyright 2017 WHC_DataModelFactory
 * Auto-generated: 2017-11-19 16:53:45
 *
 * @author netyouli (whc)
 * @github https://github.com/netyouli
 */

struct CcUser: SexyJson {
    var cid: Int = 0
    var uid: Int = 0
    var userName: String!
    var id: Int = 0
    var deptName: String!
    var headimage: String!
    var cpid: Int = 0
    var wid: Int = 0
    var type: Int = 0
    var isall: Int = 0
    
    public mutating func sexyMap(_ map: [String : Any]) {
        
        cid        <<<        map["cid"]
        uid        <<<        map["uid"]
        userName        <<<        map["userName"]
        id        <<<        map["id"]
        deptName        <<<        map["deptName"]
        headimage        <<<        map["headimage"]
        cpid        <<<        map["cpid"]
        wid        <<<        map["wid"]
        type        <<<        map["type"]
        isall        <<<        map["isall"]
    }
    
}

struct WorkListReply: SexyJson {
    
    public mutating func sexyMap(_ map: [String : Any]) {
        
    }
    
}

struct UserlistLaud: SexyJson {
    
    public mutating func sexyMap(_ map: [String : Any]) {
        
    }
    
}

struct CcDept: SexyJson {
    
    public mutating func sexyMap(_ map: [String : Any]) {
        
    }
    
}

struct WorkListReplyIsRestore: SexyJson {
    
    public mutating func sexyMap(_ map: [String : Any]) {
        
    }
    
}

struct WorkLogList: SexyJson {
    var logSummary: String!
    var isAttention: String!
    var param2: String!
    var did: Int = 0
    var cpUserName: String!
    var updateTime: String!
    var param4: String!
    var ccUser: [CcUser]!
    var workListReply: [WorkListReply]!
    var tomorrowSummary: String!
    var isCollect: String!
    var laud_count: Int = 0
    var userlistLaud: [UserlistLaud]!
    var createUserName: String!
    var logDate: Int = 0
    var param1: String!
    var cid: Int = 0
    var id: Int = 0
    var ccDept: [CcDept]!
    var isreply: String!
    var grade: Int = 0
    var updateBy: String!
    var param3: String!
    var todaySummary: String!
    var createBy: String!
    var cpid: Int = 0
    var uid: Int = 0
    var param5: String!
    var createUserHeadImage: String!
    var mark: String!
    var workListReplyIsRestore: [WorkListReplyIsRestore]!
    var createTime: String!
    
    public mutating func sexyMap(_ map: [String : Any]) {
        
        logSummary        <<<        map["logSummary"]
        isAttention        <<<        map["isAttention"]
        param2        <<<        map["param2"]
        did        <<<        map["did"]
        cpUserName        <<<        map["cpUserName"]
        updateTime        <<<        map["updateTime"]
        param4        <<<        map["param4"]
        ccUser        <<<        map["ccUser"]
        workListReply        <<<        map["workListReply"]
        tomorrowSummary        <<<        map["tomorrowSummary"]
        isCollect        <<<        map["isCollect"]
        laud_count        <<<        map["laud_count"]
        userlistLaud        <<<        map["userlistLaud"]
        createUserName        <<<        map["createUserName"]
        logDate        <<<        map["logDate"]
        param1        <<<        map["param1"]
        cid        <<<        map["cid"]
        id        <<<        map["id"]
        ccDept        <<<        map["ccDept"]
        isreply        <<<        map["isreply"]
        grade        <<<        map["grade"]
        updateBy        <<<        map["updateBy"]
        param3        <<<        map["param3"]
        todaySummary        <<<        map["todaySummary"]
        createBy        <<<        map["createBy"]
        cpid        <<<        map["cpid"]
        uid        <<<        map["uid"]
        param5        <<<        map["param5"]
        createUserHeadImage        <<<        map["createUserHeadImage"]
        mark        <<<        map["mark"]
        workListReplyIsRestore        <<<        map["workListReplyIsRestore"]
        createTime        <<<        map["createTime"]
    }
    
}


struct FK_LogModel: SexyJson {
    
    var  workLogList:[WorkLogList]!
    
    mutating func sexyMap(_ map: [String : Any]) {
        workLogList       <<<        map["workLogList"]

    }
    
    
}



