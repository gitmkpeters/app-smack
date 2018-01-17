//
//  ChannelVC.swift
//  Smack
//
//  Created by Mike on 1/17/18.
//  Copyright © 2018 jprsoftware. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }


}
