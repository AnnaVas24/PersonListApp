//
//  SecondTableViewController.swift
//  PersonListApp
//
//  Created by Vasichko Anna on 29.12.2021.
//

import UIKit

class SecondTableViewController: UITableViewController {

    var personsSecondList: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 50
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        personsSecondList.count
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personsSecondList[section].fullName
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      2
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personInfoSections", for: indexPath)

    
        let person = personsSecondList[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.image = UIImage(systemName: "phone.fill")
            content.text = "\(person.phone)"
        } else if indexPath.row == 1 {
            content.image = UIImage(systemName: "tray.fill")
            content.text = "Email: \(person.email)"
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
    

}
