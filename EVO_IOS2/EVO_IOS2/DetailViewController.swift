//
//  DetailViewController.swift
//  EVO_IOS2
//
//  Created by Student01 on 23/08/2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imgPokemon: UIImageView!
    @IBOutlet weak var pokedexLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var genLabel: UILabel!
    
    var pokemon: Pokemon?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        guard let pokemon = pokemon else {
            fatalError("Unable to instantiate pokemon for detail")
            
        }
        
        genLabel.text = "Gen: " + pokemon.generation.description
        nameLabel.text = pokemon.name
        pokedexLabel.text = "#" + pokemon.pokedexNumber.description
        typeLabel.text = "Types: " + pokemon.type.rawValue
        heightLabel.text = "Height: " + pokemon.height.description
        imgPokemon.image = UIImage(named: pokemon.imageName)
         
    }
    

    

}
