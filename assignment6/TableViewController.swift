//
//  TableViewController.swift
//  assignment6
//
//  Created by Arisa Muto on 2019/06/05.
//  Copyright © 2019 Arisa Muto. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
   
    var label1: [Int]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let iValue = Int.random(in: 1 ..< 100)
        print (iValue)
        
        for i in 0 ..< 20 {
            label1.append(iValue)
            print(label1)
            
        }
        
        tableView.register(UINib(nibName: "ListTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //セクション数を指定
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    //セルの個数を指定
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    //セルの中身の表示の仕方
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ListTableViewCell
        cell.number.text = String(label1[indexPath.row])
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
}
