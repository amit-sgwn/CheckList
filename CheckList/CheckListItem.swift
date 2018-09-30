//
//  CheckListItem.swift
//  CheckList
//
//  Created by Amit Kumar on 30/09/18.
//  Copyright © 2018 Box8. All rights reserved.
//

import Foundation

struct CheckListItem {
    var text : String
    var isSelected = false
    
    init(_ text : String, _ isSelected : Bool = false) {
        self.text = text
        self.isSelected = isSelected
    }
}
