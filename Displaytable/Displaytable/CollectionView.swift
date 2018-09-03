//
//  CollectionView.swift
//  Displaytable
//
//  Created by Vikhyath on 30/08/18.
//  Copyright © 2018 Vikhyath. All rights reserved.
//

import UIKit

class CollectionView: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var listOfitems:[CustomCell] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listOfitems = createObjects()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func createObjects() -> [CustomCell] {
        var temp: [CustomCell] = []
        
        //creating objects
        let t1 = CustomCell(image: UIImage(named: "tyrion") ?? UIImage(), title: "avenger")
        let t2 = CustomCell(image: UIImage(named: "tyrion")!, title: "avenger")
        let t3 = CustomCell(image: UIImage(named: "got.jpeg")!, title: "avenger")
        let t4 = CustomCell(image: UIImage(named: "tyrion")!, title: "avenger")
        let t5 = CustomCell(image: UIImage(named: "tyrion")!, title: "avenger")
        let t6 = CustomCell(image: UIImage(named: "tyrion")!, title: "avenger")
        let t7 = CustomCell(image: UIImage(named: "tyrion")!, title: "avenger")
        let t8 = CustomCell(image: UIImage(named: "tyrion")!, title: "avenger")
        
        temp.append(t1)
        temp.append(t2)
        temp.append(t3)
        temp.append(t4)
        temp.append(t5)
        temp.append(t6)
        temp.append(t7)
        temp.append(t8)
        
        return temp
    }
}

extension CollectionView:UICollectionViewDataSource,UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listOfitems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let oneOftheRow = listOfitems[indexPath.item]
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! OneCellCollectionViewCell
        cell = configure(cell: cell,indexPath: indexPath)
        return cell
    }
    
    func configure(cell: OneCellCollectionViewCell, indexPath: IndexPath) -> OneCellCollectionViewCell {
        cell.imageView.image = listOfitems[indexPath.item].image
        cell.label.text = listOfitems[indexPath.item].title
        
        return cell
    }
}
