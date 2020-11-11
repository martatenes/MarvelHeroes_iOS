//
//  File.swift
//  MarvelHeroes
//
//  Created by Marta on 10/11/20.
//  Copyright © 2020 Marta. All rights reserved.
//

import UIKit

class HeroeDetailVC: UIViewController, UITableViewDelegate, UITableViewDataSource, HeroeDetailView{
    
    
    fileprivate let presenter = HeroeDetailPresenter(service: MarvelService())
    private var character: Character!
    
    @IBOutlet weak var tableView: UITableView!

  
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func setCharacter(char: Character){
        self.character = char
    }
    
    func startLoading() {
        //TODO: Añadir y mostrar loading
    }
    
    func stopLoading() {
        
    }
    
   
    
    func showError() {
        
    }
    
    /// TableView methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch(indexPath.row){
            case 0: // Header
                let cell = tableView
                    .dequeueReusableCell(withIdentifier: "HeroeHeaderCell", for: indexPath) as! HeroeHeaderCell
                cell.setContent(character: character)
                return cell;
            
        case 1: // Content
            let cell = tableView
                .dequeueReusableCell(withIdentifier: "HeroeContentCell", for: indexPath) as! HeroeContentCell
            cell.setContent(char: character)
            return cell;
            default:
                return UITableViewCell()
        }
       
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch(indexPath.row){
            case 0:
                return 150
            default:
                return 90
        }
    }
    
    
}
