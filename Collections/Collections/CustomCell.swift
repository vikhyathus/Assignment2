//
//  CustomCell.swift
//  Collections
//
//  Created by Vikhyath on 29/08/18.
//  Copyright © 2018 Vikhyath. All rights reserved.
//

import UIKit

class CustomCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    func setValue(cellValue:OneCell) {
        imageView.image = cellValue.image
        label.text = cellValue.title
    }
}
