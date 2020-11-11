//
//  HeroesVC.swift
//  MarvelHeroes
//
//  Created by Marta on 9/11/20.
//  Copyright © 2020 Marta. All rights reserved.
//

import UIKit

class HeroesVC: UIViewController, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, HeroesView{
    
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    @IBOutlet var collectionView: UICollectionView!
    
    var characters : [Character] = []

    fileprivate let presenter = HeroesPresenter(service: MarvelService())

    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigationBar()
        presenter.attachView(self)
        presenter.getCharacters()
    }
    
    func setNavigationBar(){
        let navigationBar = self.navigationController?.navigationBar
        navigationBar?.barStyle = UIBarStyle.black
        navigationBar?.barTintColor = Extensions.hexStringToUIColor(hex: "#5D0B0F")
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        navigationBar?.titleTextAttributes = textAttributes
        self.navigationItem.title = "MarvelHeroes"
    }
    
    func startLoading() {
        spinner.startAnimating()
    }
    
    func stopLoading() {
        spinner.stopAnimating()
    }
    
    func setCharacters(characterList: [Character]?) {
        if (characterList != nil){
            self.characters.removeAll()
            self.characters = characterList!;
        }
        self.collectionView?.reloadData()
        self.collectionView?.collectionViewLayout.invalidateLayout()      
        
    }
    
    func showError() {
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let noOfCellsInRow = 2
        
        let flowLayout = collectionViewLayout as! UICollectionViewFlowLayout
        
        let totalSpace = flowLayout.sectionInset.left
            + flowLayout.sectionInset.right
            + (flowLayout.minimumInteritemSpacing * CGFloat(noOfCellsInRow - 1))
        
        let size = Int((collectionView.bounds.width - totalSpace) / CGFloat(noOfCellsInRow))
        
        return CGSize(width: size, height: 150)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return characters.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView
            .dequeueReusableCell(withReuseIdentifier: "HeroeCell", for: indexPath) as! HeroeCell
        cell.setContent(character: characters[indexPath.row])
        return cell;
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let character = characters[indexPath.row]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let heroeDetailVC = storyboard.instantiateViewController(withIdentifier: "HeroeDetailVC") as? HeroeDetailVC{
            heroeDetailVC.setCharacter(char: character)
            self.navigationController?.pushViewController(heroeDetailVC, animated: true)
        }
    }
    
    
}
