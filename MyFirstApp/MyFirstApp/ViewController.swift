//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Yvette Cook on 06/09/2015.
//  Copyright © 2015 Yvette. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var toDoTextField: UITextField!
    
    var toDoArray : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
    
    func addStringToArray(toDoString: String){
        toDoArray.append(toDoString)
    }

}

