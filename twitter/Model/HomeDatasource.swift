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
        let argenisUser = User(name: "Argenis De La Rosa", username: "@hennyrosexo", bioText: "iOS Engineer", profileImage: #imageLiteral(resourceName: "IMG_7409"))
        
        let micahellaUser = User(name: "Micahella", username: "@Micahellastc", bioText: "#SoftwareEngineer / @ResilientCoders", profileImage: #imageLiteral(resourceName: "image2"))
        
        //ADD THIRD USER HERE
        
//        let u = User(name: <#T##String#>, username: <#T##String#>, bioText: <#T##String#>, profileImage: <#T##UIImage#>)
        
        return [argenisUser, micahellaUser]
    }()
    
    let tweets = ["tweet1", "tweet2"]
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self, TweetCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
    
    override func numberOfSections() -> Int {
        return 2
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        if section == 1 {
            return tweets.count
        }
        return users.count
    }
}
