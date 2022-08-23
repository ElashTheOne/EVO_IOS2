//
//  Pokemon.swift
//  EVO_IOS2
//
//  Created by Student01 on 23/08/2022.
//

import Foundation

struct Pokemon{
    var name: String
    var imageName: String
    var generation: Int
    var pokedexNumber: Int
    var height: Int
    var type: TypePokemon
    
}

enum TypePokemon: String{
    case water = "water", fire = "fire", grass = "grass", flying = "flying", dragon = "dragon", poison = "poison"
}
