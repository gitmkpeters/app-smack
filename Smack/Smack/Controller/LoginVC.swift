//
//  LoginVC.swift
//  Smack
//
//  Created by Mike on 1/18/18.
//  Copyright © 2018 jprsoftware. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var closeBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
}
