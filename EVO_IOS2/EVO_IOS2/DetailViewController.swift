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

        
        let text = pokemon?.pokedexNumber.description
        genLabel.text = pokemon?.generation.description
        nameLabel.text = pokemon?.name
        pokedexLabel.text = "#: \(text ?? "")"  //pas encore affivé
        pokedexLabel.text = pokemon?.pokedexNumber.description
        typeLabel.text = pokemon?.type.rawValue
        heightLabel.text = pokemon?.height.description
        imgPokemon.image = UIImage(named: pokemon?.imageName ?? "")
         
    }
    

    

}
