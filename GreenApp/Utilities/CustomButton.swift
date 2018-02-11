//
//  CustomButton.swift
//  BharatCrypto
//
//  Created by Leela Prasad on 03/01/18.
//  Copyright © 2018 Leela Prasad. All rights reserved.
//

import UIKit

@IBDesignable
class CustomButton: UIButton {

   
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = self.frame.size.width/2
        layer.masksToBounds = true
        
    }
    
    // Gives Option for CornerRadius on IB

    @IBInspectable var cornerRadius: CGFloat = 2.0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
        
    }
    
    // Gives Option for BorderWidth on IB

    @IBInspectable var borderWidth: CGFloat = 2.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
        
    }
    
    // Gives Option for BorderColor on IB

    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
        
    }
    
    // Render Changes on IB

    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = cornerRadius
        layer.masksToBounds = true
    }
    
    override func prepareForInterfaceBuilder() {
        
        layer.cornerRadius = cornerRadius
        layer.masksToBounds = true
        
    }
}
