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
        texte = ["Gehe mit dem Hund spazieren", "Zähne putzen", "Lerne iOS-App-Entwicklung", "Löse Sudoku-Rätsel", "Krankenkassenanträge stellen"]
        for _ in 0..<texte.count {
            checkers.append(false)
        }

    }
}
var myCheckListItems = ChecklistItems()
