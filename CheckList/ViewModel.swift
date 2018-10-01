//
//  ViewModel.swift
//  CheckList
//
//  Created by Amit Kumar on 01/10/18.
//  Copyright © 2018 Box8. All rights reserved.
//

import Foundation

class ViewModel {
    
    var checkList : [CheckListItem] = []
    init() {
    }

    func setCheckListData() {
        for x in 0..<10 {
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
    
    func addNewItem() -> CheckListItem {
        return CheckListItem("New Item" , true)
    }
    
    func deleteRow(_ index : IndexPath) -> CheckListItem {
        let indexToBeRemoved = index.row
        return checkList.remove(at: indexToBeRemoved)
    }
}
