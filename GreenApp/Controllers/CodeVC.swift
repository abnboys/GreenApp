//
//  CopyVC.swift
//  GreenApp
//
//  Created by penumutchu.prasad@gmail.com on 11/02/18.
//  Copyright © 2018 abnboys. All rights reserved.
//

import UIKit

class CopyVC: UIViewController {

    
    
    
    
    
    @IBOutlet var contentView: UIView!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "Copy"
        contentView.backgroundColor = UIColor.white.withAlphaComponent(0.35)

        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

   
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.navigationBar.isHidden = false
    }
    
    
    
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
    
    
    
    
    
    

}
