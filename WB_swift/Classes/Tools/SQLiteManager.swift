//
//  SQLiteManager.swift
//  WB_swift
//
//  Created by ishop02 on 2020/6/1.
//  Copyright © 2020 happy. All rights reserved.
//

import UIKit
import SQLite

class SQLiteManager: NSObject {
    private static let manager : SQLiteManager = SQLiteManager()
    //单例
    class func shareManager() -> SQLiteManager{
        return manager
    }
//    let db = try Connection("path/to/db.sqlite3")
    
    private var db: Connection!
    private let searchTag = Table("searchTag")
    let id = Expression<Int64>("id")
    let title = Expression<String?>("title")
    
//    override init() {
//           connectSQLite3()
//       }
    
    // 与数据库建立连接
    func connectSQLite3(filePath: String = "/Documents") -> Void {
        let sqlFilePath = NSHomeDirectory() + filePath + "/db.sqlite3"
        print("sqlFilePath = \(sqlFilePath)")
        do { // 与数据库建立连接
            db = try Connection(sqlFilePath)
            print("与数据库建立连接 成功")
        } catch {
            print("与数据库建立连接 失败：\(error)")
        }
    }
    
    func createTable() -> Bool {
        do { // 创建表
            try db.run(searchTag.create { st in
                st.column(id, primaryKey: true)
                st.column(title)
            })
            print("创建表 searchTag 成功")
            return true
        } catch {
            print("创建表 searchTag 失败：\(error)")
            return false
        }
    }
}
