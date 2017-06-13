//
//  ChecklistItems.swift
//  Checklists-170611
//
//  Created by Joachim Vetter on 12.06.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit

class ChecklistItems {
    var texte =  [String]()
    var checkers = [Bool]()
    init() {
        texte = ["Sudoku", "Kakuro", "Hakyuu", "Nurikabe", "Battleships"]
        for _ in 0..<texte.count {
            checkers.append(false)
        }

    }
}
var myCheckListItems = ChecklistItems()
