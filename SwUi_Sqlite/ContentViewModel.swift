//
//  ContentViewModel.swift
//  SwUi_Sqlite
//
//  Created by Marcelo Sampaio on 01/09/22.
//

import Foundation
import SQLite

class DbManager {
    // sqlite instance
    private var db: Connection!
    
    // table instance
    private var employees: Table!
    
    // columns instances
    private var id: Expression<Int64>!
    private var name: Expression<String>!
    private var email: Expression<String>!
    
    init() {
        do {
            // documents directory path
            let path: String = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
            
            // database connection
            db = try! Connection("\(path)/users.db")
            
            // creating table object
            employees = Table("Employees")
            
            // creating instances of each column
            id = Expression<Int64>("id")
            name = Expression<String>("name")
            email = Expression<String>("email")
            
            // ⚠️ check if employees table is already created (we're not doing this becaus table will be already created!!!!!)
            // we are not checking!!!!!!! 👈
            
            
        }
    }
    
}
