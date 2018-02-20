//
//  RoundedButton.swift
//  Smack
//
//  Created by Mike on 2/20/18.
//  Copyright © 2018 jprsoftware. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    override func awakeFromNib() {
        self.setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
    }
    
    func setupView(){
        self.layer.cornerRadius = cornerRadius
    }
    

}
