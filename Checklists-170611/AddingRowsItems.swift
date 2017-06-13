//
//  AddingRowsItems.swift
//  Checklists-170611
//
//  Created by Joachim Vetter on 13.06.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit

class AddingRowsItems: UIViewController {

    @IBOutlet weak var RowsToBeAdded: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func save(_ sender: UIButton) {
        if let myText = RowsToBeAdded.text {
            let eingabeTemp = myText.trimmingCharacters(in: .whitespaces)
            let eingabe = eingabeTemp.capitalized
            print("Hallo, deine zugefügte Reihe heißt \(eingabe)")
            myCheckListItems.texte.append(eingabe)
            myCheckListItems.checkers.append(false)
            navigationController?.popViewController(animated: true)
        }
    }
}
