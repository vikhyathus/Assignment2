//
//  CollectionVC.swift
//  Collections
//
//  Created by Vikhyath on 29/08/18.
//  Copyright © 2018 Vikhyath. All rights reserved.
//

import UIKit

class CollectionVC: UIViewController {

    @IBOutlet weak var myCollectionView: UICollectionView!
    var listOfImages:[OneCell] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let itemSize = UIScreen.main.bounds.width/3 - 3
//        let layout = UICollectionViewFlowLayout()
//        layout.sectionInset = UIEdgeInsetsMake(20, 0, 10, 0)
//        layout.itemSize = CGSize(width: itemSize, height: itemSize)
//        layout.minimumInteritemSpacing = 3
//        layout.minimumLineSpacing = 3
//        myCollectionView.collectionViewLayout = layout    
        listOfImages = createObjects()
    }
    
    func createObjects() -> [OneCell] {
        var temp: [OneCell] = []
        
        //creating objects
        let t1 = OneCell(image: UIImage(named: "avg")!, title: "avenger")
        let t2 = OneCell(image: UIImage(named: "avg")!, title: "avenger")
        let t3 = OneCell(image: UIImage(named: "avg")!, title: "avenger")
        let t4 = OneCell(image: UIImage(named: "avg")!, title: "avenger")
        let t5 = OneCell(image: UIImage(named: "avg")!, title: "avenger")
        let t6 = OneCell(image: UIImage(named: "avg")!, title: "avenger")
        let t7 = OneCell(image: UIImage(named: "avg")!, title: "avenger")
        let t8 = OneCell(image: UIImage(named: "avg")!, title: "avenger")
        
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

extension CollectionVC:UICollectionViewDataSource,UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listOfImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let oneOftheRow = listOfImages[indexPath.item]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCell
        cell.setValue(cellValue: oneOftheRow)
        
        return cell
    }
}







