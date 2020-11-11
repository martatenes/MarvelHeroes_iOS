//
//  HeroesView.swift
//  MarvelHeroes
//
//  Created by Marta on 9/11/20.
//  Copyright © 2020 Marta. All rights reserved.
//

import Foundation

protocol HeroesView: NSObjectProtocol{
    func startLoading()
    func stopLoading()
    func setCharacters(characterList: [Character]?)
    func showError()
}
