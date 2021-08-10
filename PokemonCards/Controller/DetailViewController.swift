//
//  DetailViewController.swift
//  PokemonCards
//
//  Created by kristine.lazdovska on 06/08/2021.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailNameLabel: UILabel!
    @IBOutlet weak var detailSupertypeLabel: UILabel!
    @IBOutlet weak var detailHpLabel: UILabel!
    @IBOutlet weak var detailSubtypeLabel: UILabel!
    
    var pokemon: Pokemon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let pokemon = pokemon {
            ImageController.getImage(for: pokemon.image) { (image)
                in
                self.detailImage.image = image
            }
            #warning("Errors in call")
           /* PokemonViewController.getPokemonData(for: pokemon.name)) { (name)
                in
                self.detailNameLabel.name = name
                
            }else{
                print("Pokemon data is nil")
            }*/
        }
    }
}
