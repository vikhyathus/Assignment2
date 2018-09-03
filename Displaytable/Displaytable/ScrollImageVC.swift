//
//  ScrollImageVC.swift
//  Displaytable
//
//  Created by Vikhyath on 31/08/18.
//  Copyright © 2018 Vikhyath. All rights reserved.
//

import UIKit

class ScrollImageVC: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let image = UIImage(named: "scroll")
        imageView.image = image
        scrollView.delegate = self
        scrollView.minimumZoomScale = 0.1
        scrollView.maximumZoomScale = 4.0
        scrollView.zoomScale = 1.0
    }
    
}

extension ScrollImageVC: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.imageView
    }
}

