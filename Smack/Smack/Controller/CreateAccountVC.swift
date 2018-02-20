//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Mike on 1/20/18.
//  Copyright © 2018 jprsoftware. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    @IBOutlet weak var usernameTxtFld: UITextField!
    @IBOutlet weak var emailTxtFld: UITextField!
    @IBOutlet weak var passwordTxtFld: UITextField!
    @IBOutlet weak var profileIMg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
    @IBAction func createAccountPressed(_ sender: Any) {
        
        guard let email = emailTxtFld.text, emailTxtFld.text != "" else { return }
        guard let pass = passwordTxtFld.text, passwordTxtFld.text != "" else { return }
        
        AuthService.instance.registerUser(email: email, password: pass)
            { (success) in
                if success {
                    //print("User registered!")
                    AuthService.instance.loginUser(email: email, password: pass, completion: { (success) in
                        if success {
                            print("Logged in user!", AuthService.instance.authToke)
                        }
                    })
                }
            }
    }
    @IBAction func pickAvatarPressed(_ sender: Any) {
    }
    
    @IBAction func pickBGColorPressed(_ sender: Any) {
    }
}
