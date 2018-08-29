//
//  ViewController.swift
//  Login
//
//  Created by Vikhyath on 27/08/18.
//  Copyright © 2018 Vikhyath. All rights reserved.
//

import UIKit

class Basescreen: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var chooseButton: UIButton!
    @IBOutlet weak var selectionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseButton.layer.cornerRadius = 20
    }

    @IBAction func onButtonTap(_ sender: UIButton) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "Selectionscreen") as! Selectionscreen
        selectionVC.selectionDelegate = self
        present(selectionVC,animated: true,completion: nil)
    }
}

extension Basescreen: Passdata{
    func passDataToBaseClass(image: UIImage, title: String, color: UIColor) {
        imageView.image = image
        selectionLabel.text = title
        view.backgroundColor = color
    }
}
