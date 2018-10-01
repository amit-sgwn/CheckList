//
//  ViewController.swift
//  CheckList
//
//  Created by Amit Kumar on 30/09/18.
//  Copyright © 2018 Box8. All rights reserved.
//

import UIKit

class CheckListViewController: UITableViewController {

    let viewModel = ViewModel()

    //MARK:- Life cycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.setCheckListData()
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.title = "TO-Do List"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    //MARH:- Utility Method
  
    //MARK:- Delegate methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.checkList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        if let label = cell.viewWithTag(1000) as? UILabel{

            label.text = self.viewModel.checkList[indexPath.row].text
            if self.viewModel.checkList[indexPath.row].isSelected {
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
                self.viewModel.checkList[indexPath.row].isSelected = true
            } else {
                cell.accessoryType = .none
                self.viewModel.checkList[indexPath.row].isSelected = false
            }
        }
    }
    
    //MARK:- Actions
    
    @IBAction func addItem(_ sender: Any) {
        print("Item added")
        let index = viewModel.checkList.count
        (viewModel.checkList).append(viewModel.addNewItem())
        let indexPath = IndexPath(item: index , section: 0)
        tableView.insertRows(at: [indexPath], with: .none)
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
    
}

