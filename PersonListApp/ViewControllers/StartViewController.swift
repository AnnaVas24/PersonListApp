//
//  StartViewController.swift
//  PersonListApp
//
//  Created by Vasichko Anna on 29.12.2021.
//

import UIKit

class StartViewController: UITabBarController {

    private var personsList = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passData()
    }
}
extension StartViewController {
    private func passData() {
        for viewController in viewControllers! {
            if let navigationVC = viewController as? UINavigationController{
                if let viewAfterNavigation = navigationVC.topViewController as? FirstTableViewController {
                    viewAfterNavigation.persons = personsList
                } else if let viewAfterNavigation = navigationVC.topViewController as? SecondTableViewController {
                    viewAfterNavigation.personsSecondList = personsList
                }
            }
}
}
}
