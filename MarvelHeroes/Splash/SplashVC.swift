//
//  SplashVC.swift
//  Atom
//
//  Created by Marta on 8/7/20.
//  Copyright © 2020 Marta. All rights reserved.
//

import UIKit


class SplashVC: UIViewController, SplashView{
    
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    fileprivate let splashPresenter = SplashPresenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        splashPresenter.attachView(self)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        splashPresenter.simulateWait()
            
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        splashPresenter.detachView()
    }
    
    func startLoading(){
        spinner.startAnimating()
    }
    
    func stopLoading(){
        spinner.stopAnimating()
    }
    
    func showHeroesVC() {
        self.performSegue(withIdentifier: "SplashToNavigationRootSegue", sender: nil)
    }
    
    func showError(){
        let alert = UIAlertController(title: "Error", message: "Ocurrió un error al obtener la información", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Aceptar", style: .default))
        self.present(alert, animated: true, completion: nil)
    }
}
