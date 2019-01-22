//
//  ViewController.swift
//  BudgetApp
//
//  Created by Christian Sletten on 01.06.2018.
//  Copyright © 2018 Christian Sletten. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let items = ["horse", "cat", "dog"]
    
    override func viewDidLoad() {
        
        tableView.delegate = self
        tableView.dataSource = self
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return items.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! customTableViewCell
        
        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
        
        cell.animalLabel.text = items[indexPath.row]
        cell.animalImage.image = UIImage(named: items[indexPath.row])
        
        cell.animalImage.layer.cornerRadius = cell.cellView.frame.height / 2
        
        return cell
    }



}

