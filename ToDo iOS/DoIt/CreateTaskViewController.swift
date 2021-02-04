//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Akshay Anand on 25/06/20.
//  Copyright © 2020 Akshay Anand. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskName: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        importantSwitch.isOn = false;
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: Any) {
        let task = Task(name: taskName.text!, important: importantSwitch.isOn)
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
    

}
