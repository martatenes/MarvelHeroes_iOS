//
//  CollectionItem.swift
//  MarvelHeroes
//
//  Created by Marta on 9/11/20.
//  Copyright © 2020 Marta. All rights reserved.
//

import Foundation

struct CollectionItem: Codable{
    var available: Int!
    var collectionUri: String!
    var items: [Item]!
    var returned: Int!
}

struct Item: Codable{
    var resourceURI: String!
    var name: String!
    var type: String?
    var role: String?
    var image: String?
}
