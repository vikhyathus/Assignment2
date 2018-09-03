//
//  ViewController.swift
//  Displaytable
//
//  Created by Vikhyath on 29/08/18.
//  Copyright © 2018 Vikhyath. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {
    
    var listOfTableObject:[TableObject] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()	
    }

    @IBAction func displayButoonTapped(_ sender: UIButton) {
//        let nextScreen = storyboard?.instantiateViewController(withIdentifier: "TableViewList")
//        present(nextScreen!,animated:true,completion:nil)
        
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "TableViewList") as! SecondVC
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    @IBAction func displayCollectionButtonTapped(_ sender: UIButton) {
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "collectionVC") as! CollectionView
        self.navigationController?.pushViewController(secondViewController, animated: true)
        
//        let nextScreen = storyboard?.instantiateViewController(withIdentifier: "collectionVC")
//        present(nextScreen!,animated:true,completion:nil)
    }
}

