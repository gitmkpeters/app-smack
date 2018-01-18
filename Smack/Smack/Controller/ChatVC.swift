//
//  ChatVC.swift
//  Smack
//
//  Created by Mike on 1/17/18.
//  Copyright © 2018 jprsoftware. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    
    // Outlets    
    @IBOutlet weak var menuBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
    }


}
