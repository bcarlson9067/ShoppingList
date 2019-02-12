//
//  ViewController.swift
//  ShoppingList
//
//  Created by Bailey Carlson on 2/8/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var newItemTextField: UITextField!
    var items: [Item] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
       tableView.dataSource = self
        
        let item1 = Item(name: "Milk")
        let item2 = Item(name: "Eggs")
        items = [item1,item2]
    }
    
    @IBAction func addNewItemButtonPressed(_ sender: UIBarButtonItem) {
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = "Hello"
        return cell
    }
    
}

