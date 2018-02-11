//
//  CustomImageView.swift
//  BharatCrypto
//
//  Created by Leela Prasad on 03/01/18.
//  Copyright © 2018 Leela Prasad. All rights reserved.
//

import UIKit

@IBDesignable
class CustomImageView: UIImageView {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupImage()
        
    }
    
    // Gives Option for Corner Radius on IB
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = self.frame.width/2
        }
        
    }
    
    // Gives Option for BorderWidth on IB
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
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
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        setupImage()
        
    }
    
    // Render Changes on IB
    
    override func prepareForInterfaceBuilder() {
        
        setupImage()
        
    }
    
    private func setupImage() {
        
        layer.cornerRadius = cornerRadius
        layer.masksToBounds = true
    }
}
