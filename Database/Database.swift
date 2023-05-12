//
//  Database.swift
//  ExpenseManagementApp
//
//  Created by MT on 04/05/2023.
//

import Foundation
import SQLite


class Database {
    static let shared = Database()
    public let connection: Connection?
    public let databaseFileName = "ExpensesManagemnet.sqlite3"
    private init() {
        let dbPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first as String?
        do {
            connection = try Connection("\(dbPath!)/(databaseFileName)")
        } catch {
            connection = nil
            let nserror = error as NSError
            print("cannot connect to Database. Error is: \(nserror),\(nserror.userInfo)")
        }
    }
}
