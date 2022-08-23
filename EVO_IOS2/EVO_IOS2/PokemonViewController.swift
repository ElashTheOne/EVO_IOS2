//
//  PokemonViewController.swift
//  EVO_IOS2
//
//  Created by Student01 on 23/08/2022.
//

import UIKit

class PokemonViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var pokemons = [Pokemon]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: PokemonCellTableViewCell.identifier, bundle: .main),
                           forCellReuseIdentifier: PokemonCellTableViewCell.identifier)

        loadData()
    }
    
    func loadData(){
        
        pokemons.append(Pokemon(name: "Bulbizarre",imageName: "Bulbizarre",generation: 1, pokedexNumber: 1, height: 135, type: .water))
        pokemons.append(Pokemon(name: "Herbizarre",imageName: "Herbizarre",generation: 1, pokedexNumber: 1, height: 120, type: .grass))
        pokemons.append(Pokemon(name: "Florizarre",imageName: "Florizarre",generation: 1, pokedexNumber: 1, height: 140, type: .fire))
        pokemons.append(Pokemon(name: "Salamèche",imageName: "Salameche",generation: 1, pokedexNumber: 1, height: 130, type: .fire))
        
        
    }
    

}

extension PokemonViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PokemonCellTableViewCell.identifier,
                                                       for: indexPath) as? PokemonCellTableViewCell
        else {
            fatalError("Unable to dequeue PlanetCell")
        }
        
        cell.pokemonLabel.text = pokemons[indexPath.row].name
        cell.imgPokemon.image = UIImage(named: pokemons[indexPath.row].imageName)
        
        return cell
        
    }
    
    
}

extension PokemonViewController : UITableViewDelegate{
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        else {
            fatalError("Unable to instantiate DetailViewController")
        }
        
        vc.pokemon = Pokemon(name: pokemons[indexPath.row].name ,imageName: pokemons[indexPath.row].imageName,generation: pokemons[indexPath.row].generation, pokedexNumber: pokemons[indexPath.row].pokedexNumber, height: pokemons[indexPath.row].height, type: pokemons[indexPath.row].type)
        
        
        
        show(vc, sender: nil)
    }
}


