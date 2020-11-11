//
//  HeroeCell.swift
//  MarvelHeroes
//
//  Created by Marta on 9/11/20.
//  Copyright © 2020 Marta. All rights reserved.
//

import UIKit

class HeroeCell: UICollectionViewCell{
    
    @IBOutlet weak var thumbnail: UIImageView!
  
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var contentTitleView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentTitleView.layer.cornerRadius = contentTitleView.frame.height / 2
        contentTitleView.layer.masksToBounds = true
    }
    
    func setContent(character: Character){
        if let charTitle = character.name{
            title.text = charTitle
        }
        if let thumb = character.thumbnail{
            
            self.thumbnail.imageFromUrl(url:  thumb.path + "." + thumb.extensionImage)
        }
        
    }
}
