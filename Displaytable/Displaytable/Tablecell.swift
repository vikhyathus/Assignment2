//
//  Tablecell.swift
//  Displaytable
//
//  Created by Vikhyath on 29/08/18.
//  Copyright © 2018 Vikhyath. All rights reserved.
//

import UIKit

class Tablecell: UITableViewCell {
    
    @IBOutlet weak var rowImage: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    func setData(row:TableObject) {
        label.text = row.title
        rowImage.image = row.image
    }

}
