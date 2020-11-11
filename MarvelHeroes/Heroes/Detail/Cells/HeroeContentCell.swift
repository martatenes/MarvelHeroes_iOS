//
//  HeroeContentCell.swift
//  MarvelHeroes
//
//  Created by Marta on 11/11/20.
//  Copyright © 2020 Marta. All rights reserved.
//

import UIKit

class HeroeContentCell: UITableViewCell{
    
    @IBOutlet weak var seriesLabel: UILabel!
    @IBOutlet weak var eventsLabel: UILabel!
    @IBOutlet weak var storiesLabel: UILabel!
    @IBOutlet weak var comicsLabel: UILabel!
    
    
    override func awakeFromNib() {
        
    }
    
    func setContent(char: Character){
        if let seriesCount = char.series?.items?.count{
            seriesLabel.text = String(seriesCount)
        }
        if let eventsCount = char.events?.items?.count{
            eventsLabel.text = String(eventsCount)
        }
        if let storiesCount = char.stories?.items?.count{
            storiesLabel.text = String(storiesCount)
        }
        if let comicsCount = char.comics?.items?.count{
            comicsLabel.text = String(comicsCount)
        }
     }
}
