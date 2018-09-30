//
//  ViewController.swift
//  CheckList
//
//  Created by Amit Kumar on 30/09/18.
//  Copyright © 2018 Box8. All rights reserved.
//

import UIKit

class CheckListViewController: UITableViewController {

    
    var checkList : [CheckListItem] = []
    
    
    func setCheckListData() {
        for x in 0..<1000 {
            var text : String!
            if x % 5 == 0 {
                text = "Take the jog"
            } else if x % 5 == 1 {
                text = "Watch a movie"
            } else if x % 5 == 2 {
                text = "Code an App"
            } else if x % 5 == 3 {
                text = "Walk the dog"
            } else {
                text = "Study design pattern"
            }
            let checkList = CheckListItem(text)
            self.checkList.append(checkList)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setCheckListData()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.checkList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        if let label = cell.viewWithTag(1000) as? UILabel{

            label.text = self.checkList[indexPath.row].text
            if self.checkList[indexPath.row].isSelected {
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
                self.checkList[indexPath.row].isSelected = true
            } else {
                cell.accessoryType = .none
                self.checkList[indexPath.row].isSelected = false
            }
        }
    }
    
    
}

