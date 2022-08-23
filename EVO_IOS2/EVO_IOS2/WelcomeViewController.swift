//
//  ViewController.swift
//  EVO_IOS2
//
//  Created by Student01 on 23/08/2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var googleButton: UIButton!
    @IBOutlet weak var facebookButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginGoogle(_ sender: Any) {
        present(img: "google_header")
    }
    
    
    @IBAction func lofinFacebook(_ sender: Any) {
        present(img: "faceook_header")
    }
    
    func present(img:String){
        
        if let vc = storyboard?.instantiateViewController(identifier: LoginViewController.identifier) as? LoginViewController {
            vc.stringImg = img
            present(vc, animated: true)
            
        }
        
    }
}

