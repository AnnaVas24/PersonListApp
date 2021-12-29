//
//  Person.swift
//  PersonListApp
//
//  Created by Vasichko Anna on 29.12.2021.
//

import Foundation

struct Person: Equatable {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    static func getPerson() -> [Person] {
        var persons = [Person]()
        while persons.count < DataManager.shared.names.count{

        let person = Person(
            name: DataManager.shared.names.randomElement() ?? "",
            surname: DataManager.shared.surnames.randomElement() ?? "",
            email: DataManager.shared.emails.randomElement() ?? "",
            phone: DataManager.shared.phones.randomElement() ?? ""
        )

            if persons.firstIndex(of: Person(name: person.name, surname: person.surname, email: person.email, phone: person.phone)) == nil {
                persons.append(person)
            }
        }
        return persons
    }
}
    


