//
//  AddItemTableViewController.swift
//  CheckList
//
//  Created by Amit Kumar on 01/10/18.
//  Copyright © 2018 Box8. All rights reserved.
//

import UIKit

class AddItemTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.largeTitleDisplayMode = .never
    }

    @IBAction func cancel(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func done(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
