//
//  HomeDatasource.swift
//  twitter
//
//  Created by argenis delarosa on 4/14/19.
//  Copyright © 2019 argenis delarosa. All rights reserved.
//

import LBTAComponents

class HomeDatasource: Datasource {
    
    let users: [User] = {
        let argenisUser = User(name: "Argenis De La Rosa", username: "@hennyrosexo", bioText: "computer guy", profileImage: #imageLiteral(resourceName: "IMG_7409"))
        
        let micahellaUser = User(name: "Micahella", username: "@Micahellastc", bioText: "#SoftwareEngineer / @ResilientCoders", profileImage: #imageLiteral(resourceName: "image2"))
        
        //ADD THIRD USER HERE
        
//        let u = User(name: <#T##String#>, username: <#T##String#>, bioText: <#T##String#>, profileImage: <#T##UIImage#>)
        
        return [argenisUser, micahellaUser]
    }()
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        return users.count
    }
}
