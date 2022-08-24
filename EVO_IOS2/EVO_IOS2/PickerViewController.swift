//
//  PickerViewController.swift
//  EVO_IOS2
//
//  Created by Student01 on 24/08/2022.
//

import UIKit
import SafariServices

class PickerViewController: UIViewController {
    
    var colors:[UIColor] = [.red,.blue,.green,.black,.white,.purple,.systemMint]
    var pokemons = [Pokemon]()

    @IBOutlet weak var pickerPokemon: UIPickerView!
    
    @IBOutlet weak var imgPokemon: UIImageView!
    
    @IBOutlet weak var buttonMoreInfo: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        pickerPokemon.delegate = self
        pickerPokemon.isHidden = false
        imgPokemon.image = UIImage(named: pokemons[0].imageName)
        imgPokemon.backgroundColor = colors[0]
        
    }
    
    func loadData(){
        
        pokemons.append(Pokemon(name: "Bulbizarre",imageName: "Bulbizarre",generation: 1, pokedexNumber: 1, height: 135, type: .water))
        pokemons.append(Pokemon(name: "Herbizarre",imageName: "Herbizarre",generation: 1, pokedexNumber: 1, height: 120, type: .grass))
        pokemons.append(Pokemon(name: "Florizarre",imageName: "Florizarre",generation: 1, pokedexNumber: 1, height: 140, type: .fire))
        pokemons.append(Pokemon(name: "Salamèche",imageName: "Salameche",generation: 1, pokedexNumber: 1, height: 130, type: .fire))
        
        
    }
    

    

    @IBAction func openSafariController(_ sender: Any) {
        
        loadUrlonSafariViewController(string: NSLocalizedString("website", comment: ""))
        
    }
    
    func loadUrlonSafariViewController(string:String){
        if let url = URL(string: string){
            let vc = SFSafariViewController(url:url)
            present(vc,animated: true)
        }
        
    }
}

extension PickerViewController: UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component{
        case 0:
            return pokemons.count
        case 1:
            return colors.count
        default:
            return 0
        }
    }
    
}

extension PickerViewController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component{
        case 0:
            return pokemons[row].name
        case 1:
            return colors[row].accessibilityName
        default:
            return ""
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        switch component{
        case 0:
            imgPokemon.image = UIImage(named: pokemons[row].imageName)
            
        case 1:
            imgPokemon.backgroundColor = colors[row]
        default:
            imgPokemon.image = UIImage(named: pokemons[row].imageName)
        }
        
    }
    
}
