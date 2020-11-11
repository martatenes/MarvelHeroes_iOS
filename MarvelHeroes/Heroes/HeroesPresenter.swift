//
//  HeroesPresenter.swift
//  MarvelHeroes
//
//  Created by Marta on 9/11/20.
//  Copyright © 2020 Marta. All rights reserved.
//

import Foundation

class HeroesPresenter{
    
    weak fileprivate var heroesView: HeroesView?
    fileprivate let marvelService: MarvelService

    
    init(service: MarvelService) {
        self.marvelService = service
    }
    
    func attachView(_ view: HeroesView){
        heroesView = view;
    }
    
    func detachView(){
        heroesView = nil;
    }
    
    func getCharacters(){
        self.heroesView?.startLoading()
        
        marvelService.getCharacters(onSuccess: { (response: [Character]?) in
            self.heroesView?.stopLoading()
            self.heroesView?.setCharacters(characterList: response)
        }) { (error: Error?) in
            self.heroesView?.stopLoading()
            self.heroesView?.showError()
        }
        
    }
}
