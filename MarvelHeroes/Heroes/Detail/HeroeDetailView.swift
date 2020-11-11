//
//  HeroeDetailView.swift
//  MarvelHeroes
//
//  Created by Marta on 10/11/20.
//  Copyright © 2020 Marta. All rights reserved.
//

import Foundation

protocol HeroeDetailView: NSObjectProtocol{
    func startLoading()
    func stopLoading()
    func setCharacter(char: Character)
    func showError()
}
