//
//  ViewController.swift
//  Checklists-170611
//
//  Created by Joachim Vetter on 11.06.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.contentInset = UIEdgeInsets(top: 30, left: 0, bottom: 0, right: 0)
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCheckListItems.texte.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        let myLabel = myCell.viewWithTag(1000) as! UILabel
        myLabel.text = myCheckListItems.texte[indexPath.row]
        /*if !myCheckListItems.checkers[indexPath.row] {
            myCell.accessoryType = .none
        } else {
            myCell.accessoryType = .checkmark
        }*/
        configure(extern: myCell, at: indexPath)
        return myCell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let myCurrentCell = tableView.cellForRow(at: indexPath) {
            /*if !myCheckListItems.checkers[indexPath.row] {
                myCurrentCell.accessoryType = .checkmark
                myCheckListItems.checkers[indexPath.row] = true
            } else {
                myCurrentCell.accessoryType = .none
                myCheckListItems.checkers[indexPath.row] = false
            }*/
            myCheckListItems.checkers[indexPath.row] = !myCheckListItems.checkers[indexPath.row]
            configure(extern: myCurrentCell, at: indexPath)
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func configure(extern meineZelle: UITableViewCell, at indexPath: IndexPath) {
        if !myCheckListItems.checkers[indexPath.row] {
            meineZelle.accessoryType = .none
        } else {
            meineZelle.accessoryType = .checkmark
        }
    }
}

