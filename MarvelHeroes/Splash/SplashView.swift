//
//  SplashView.swift
//  MarvelHeroes
//
//  Created by Marta on 9/11/20.
//  Copyright © 2020 Marta. All rights reserved.
//

import Foundation

protocol SplashView: NSObjectProtocol{
    func startLoading()
    func stopLoading()
    func showHeroesVC()
    func showError()
}
