//
//  LoginViewController.swift
//  EVO_IOS2
//
//  Created by Student01 on 23/08/2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var imgHeader: UIImageView!
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var paswordTextField: UITextField!
    @IBOutlet weak var connectionButton: UIButton!
    static let identifier = "LoginViewController"
    var stringImg: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgHeader.image = UIImage(named: stringImg ?? "faceook_header")

        // Do any additional setup after loading the view.
    }
    

    @IBAction func goToApp(_ sender: Any) {
        if let login = loginTextField.text, let password = paswordTextField.text, login.contains("@") && !password.isEmpty && !login.isEmpty{
            
            if let vc = storyboard?.instantiateViewController(identifier: "UITabBarController") as? UITabBarController {
                vc.modalPresentationStyle = .fullScreen
                present(vc, animated: true)
                
            }
            
            
            
            
        } else{
            
            let alert = UIAlertController(title: "Error",
                                          message: "Login and/or email invalid",
                                          preferredStyle: .alert)
            
            let okButton = UIAlertAction(title: "OK", style: .cancel)
            alert.addAction(okButton)
            self.present(alert,animated: true)
            
            
            
        }
    }
    

}
