//
//  CreateTaskViewController.swift
//  DoItTwo
//
//  Created by Joseph Lana on 13/09/2016.
//  Copyright © 2016 Joseph Lana. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    
    
    @IBOutlet weak var taskNameTextField: UITextField!
    
    
    @IBOutlet weak var importantSwitch: UISwitch!
   
    var previousVC = ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(sender: AnyObject) {
    
    //create a task from the outlet information
        
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.on
        
        
    //Add new task to array in previous viewController
        
    
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewControllerAnimated(true)
        
        
    }


}
