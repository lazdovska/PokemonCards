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
    
    var image: UIImage? = UIImage ()
    var nameLabel = ""
    var supertypeLabel = ""
    var hpLabel = ""
    var subtypeLabel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if image != nil && !nameLabel.isEmpty && !supertypeLabel.isEmpty && !hpLabel.isEmpty && !subtypeLabel.isEmpty{
            detailImage.image = image
            detailNameLabel.text = nameLabel
            detailSupertypeLabel.text = supertypeLabel
            detailHpLabel.text = hpLabel
            detailSubtypeLabel.text = subtypeLabel
            
        }
    }
    

  

}
