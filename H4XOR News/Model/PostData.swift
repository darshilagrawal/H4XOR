//
//  PostData.swift
//  H4XOR News
//
//  Created by Darshil Agrawal on 01/08/20.
//  Copyright © 2020 Darshil Agrawal. All rights reserved.
//

import Foundation

struct Results : Codable{
   
    let hits:[Posts]
    
}
struct Posts :Codable ,Identifiable{
    var id:String{
        return objectID
    }
    let created_at : String
    let title:String
    let author:String
    let points:Int
    let url:String?
    let objectID:String
}
