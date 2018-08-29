//
//  Selectionscreen.swift
//  Login
//
//  Created by Vikhyath on 28/08/18.
//  Copyright © 2018 Vikhyath. All rights reserved.
//

import UIKit


protocol Passdata {
    func passDataToBaseClass(image:UIImage,title:String,color:UIColor)
}

class Selectionscreen: UIViewController {
    
    var selectionDelegate:Passdata!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func johnTapped(_ sender: UIButton) {
        selectionDelegate.passDataToBaseClass(image: UIImage(named: "john.jpeg")!, title: "JOHN SNOW", color: UIColor.blue)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func tyrionTapped(_ sender: UIButton) {
        selectionDelegate.passDataToBaseClass(image: UIImage(named: "tyrion.jpeg")!, title: "TYRION LANNISTER", color: UIColor.brown)
        dismiss(animated: true, completion: nil)
    }
}


