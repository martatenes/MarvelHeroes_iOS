//
//  SplashPresenter.swift
//  MarvelHeroes
//
//  Created by Marta on 9/11/20.
//  Copyright © 2020 Marta. All rights reserved.
//

import Foundation

class SplashPresenter{
    
    weak fileprivate var splashView: SplashView?
    
    init(){
    }
    
    func attachView(_ view: SplashView){
        splashView = view;
    }
    
    func detachView(){
        splashView = nil;
    }
    
    func simulateWait(){
        self.splashView?.startLoading()
         Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { (timer) in
            self.splashView?.stopLoading()
            self.splashView?.showHeroesVC()
        }
        
            
      }
}
