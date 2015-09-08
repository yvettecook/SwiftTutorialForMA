//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Yvette Cook on 06/09/2015.
//  Copyright © 2015 Yvette. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var toDoTextField: UITextField!
    @IBOutlet var tableView: UITableView!
    
    var toDoArray : [String] = ["Eat", "Sleep", "Code"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveButtonTapped(sender: AnyObject) {
        let toDoText = toDoTextField.text!
        addStringToArray(toDoText)
        print(toDoArray)
    }
    
    // MARK: TableView DataSource and Delegate
    
    func addStringToArray(toDoString: String){
        toDoArray.append(toDoString)
        tableView.reloadData()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "ToDoTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! ToDoTableViewCell
        cell.toDoCellLabel.text = toDoArray[indexPath.row]
        return cell
    }

}

