//
//  HeroeDetailPresenter.swift
//  MarvelHeroes
//
//  Created by Marta on 10/11/20.
//  Copyright © 2020 Marta. All rights reserved.
//

import Foundation


class HeroeDetailPresenter{
    
    weak fileprivate var heroeView: HeroeDetailView?
    fileprivate let marvelService: MarvelService
    
    
    init(service: MarvelService) {
        self.marvelService = service
    }
    
    func attachView(_ view: HeroeDetailView){
        heroeView = view;
    }
    
    func detachView(){
        heroeView = nil;
    }
}
