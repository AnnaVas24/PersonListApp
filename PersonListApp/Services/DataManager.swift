//
//  DataManager.swift
//  PersonListApp
//
//  Created by Vasichko Anna on 29.12.2021.
//

class DataManager {
    static let shared = DataManager()
    
    let names = [
    "Tim", "Bob", "Rick", "John",
    "Jack", "Karl", "Kate", "Phyby",
    "James", "Lucy"
    ]
    
    let surnames = [
    "Smith", "Johnson", "Dow", "Willson",
    "Butler", "Black", "Richardson", "Murphy",
    "Collins", "Fox"
    ]
    
    let emails = [
    "asd@mail.ru", "bbb@mail.ru", "lpp@mail.ru", "dkap@mail.ru",
    "asld@mail.ru", "eor@mail.ru", "dsa@mail.ru", "daef@mail.ru",
    "faa@mail.ru", "afer@mail.ru"
    ]
    
    let phones = [
    "8912321", "8777221", "8132422", "8123002",
    "8743212", "8123000", "8543212", "8123904",
    "8123454", "8124121"
    ]
    
    private init() {}
    
}
