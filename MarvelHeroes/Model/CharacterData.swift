//
//  CharacterData.swift
//  MarvelHeroes
//
//  Created by Marta on 9/11/20.
//  Copyright © 2020 Marta. All rights reserved.
//

import Foundation

struct CharacterData: Codable{
    
    var offset: Int!
    var limit: Int!
    var total: Int!
    var count: Int!
    var results: [Character]!
}
