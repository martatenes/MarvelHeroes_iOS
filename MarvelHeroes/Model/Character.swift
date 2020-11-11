//
//  Character.swift
//  MarvelHeroes
//
//  Created by Marta on 9/11/20.
//  Copyright © 2020 Marta. All rights reserved.
//

import Foundation

struct Character: Codable{
    
    var id: CLong!
    var name: String!
    var description: String!
    var modified: String!
    var thumbnail: Thumbnail!
    var resourceUri: String!
    var page: Int!
    var comics: CollectionItem!
    var series: CollectionItem!
    var stories: CollectionItem!!
    var events: CollectionItem!
}
