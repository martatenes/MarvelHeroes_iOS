//
//  CharacterResponse.swift
//  MarvelHeroes
//
//  Created by Marta on 9/11/20.
//  Copyright © 2020 Marta. All rights reserved.
//

import Foundation

struct CharacterResponse:  Codable
{
    
    var code: Int!
    var status: String!
    var copyright: String!
    var attributionText: String!
    var attributionHtml: String!
    var etag: String!
    var data: CharacterData?
}
