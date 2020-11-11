//
//  Thumbnail.swift
//  MarvelHeroes
//
//  Created by Marta on 9/11/20.
//  Copyright © 2020 Marta. All rights reserved.
//

import Foundation

struct Thumbnail: Codable{
 
    var path: String
    var extensionImage: String
    
    enum CodingKeys: String, CodingKey{
        case extensionImage = "extension"
        case path = "path"
    }
}
