//
//  HeroeHeaderCell.swift
//  MarvelHeroes
//
//  Created by Marta on 11/11/20.
//  Copyright © 2020 Marta. All rights reserved.
//

import UIKit

class HeroeHeaderCell: UITableViewCell{
    
  
   
    @IBOutlet weak var heroeImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var titleContentView: UIView!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        titleContentView.layer.cornerRadius = titleContentView.frame.height / 2
        titleContentView.layer.masksToBounds = true
    }
    
    func setContent(character: Character){
        if let charTitle = character.name{
            title.text = charTitle
        }
        if let thumb = character.thumbnail{
            
            self.heroeImage.imageFromUrl(url:  thumb.path + "." + thumb.extensionImage)
        }
        
    }
}
