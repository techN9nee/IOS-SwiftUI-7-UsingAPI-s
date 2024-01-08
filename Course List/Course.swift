//
//  Course.swift
//  Course List
//
//  Created by Aytek Özgül on 7.01.2024.
//

import Foundation

struct Course : Identifiable , Codable {
    var id : Int
    var image : String
    var title : String
    var subtitle : String
}
