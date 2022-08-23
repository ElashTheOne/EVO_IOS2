//
//  PokemonCellTableViewCell.swift
//  EVO_IOS2
//
//  Created by Student01 on 23/08/2022.
//

import UIKit

class PokemonCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var pokemonLabel: UILabel!
    @IBOutlet weak var imgPokemon: UIImageView!
    
    static let identifier = "PokemonCellTableViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
