//
//  SecondVC.swift
//  Displaytable
//
//  Created by Vikhyath on 29/08/18.
//  Copyright © 2018 Vikhyath. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var listOfTableObject:[TableObject] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listOfTableObject = createTableObject()
        tableView.dataSource = self
        tableView.delegate = self
        
        let headerView = UIView()
        headerView.backgroundColor = UIColor.black
        headerView.frame(forAlignmentRect: CGRect(x: 0, y: 0, width: view.frame.width, height: 50))
        
        let footerView = UIView()
        footerView.backgroundColor = UIColor.black
        footerView.frame(forAlignmentRect: CGRect(x: 0, y: 0, width: view.frame.width, height: 50))
        
        tableView.tableFooterView = footerView
        tableView.tableHeaderView = headerView
    }
    
    func createTableObject() -> [TableObject] {
        var temp:[TableObject] = []
        
        let t1 = TableObject(title: "JOHN", image: UIImage(named: "john.jpeg")!)
        let t2 = TableObject(title: "TYRION", image: UIImage(named: "tyrion.jpeg")!)
        let t3 = TableObject(title: "TYRION", image: UIImage(named: "tyrion.jpeg")!)
        let t4 = TableObject(title: "TYRION", image: UIImage(named: "tyrion.jpeg")!)
        let t5 = TableObject(title: "TYRION", image: UIImage(named: "tyrion.jpeg")!)
        let t6 = TableObject(title: "TYRION", image: UIImage(named: "tyrion.jpeg")!)
        
        temp.append(t1)
        temp.append(t2)
        temp.append(t3)
        temp.append(t4)
        temp.append(t5)
        temp.append(t6)
        
        return temp
    }
}

extension SecondVC: UITableViewDataSource,UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfTableObject.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let oneOfTheRow = listOfTableObject[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Tablecell", for: indexPath) as! Tablecell
        cell.setData(row:oneOfTheRow)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 132.0
    }

}

