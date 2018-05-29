//
//  Person.swift
//  Life Thesis
//
//  Created by Laurence Wingo on 5/28/18.
//  Copyright © 2018 Cosmic Arrows, LLC. All rights reserved.
//

import Foundation


struct Person {
    let firstName: String
    let lastName: String
    let nickName: String
    
    func changeNickName(nickName: String) -> Person {
        return Person.init(firstName: firstName, lastName: lastName, nickName: nickName)
    }
}

extension Person {
    
    init(firstName: String, lastName: String) {
        self.init(firstName: firstName, lastName: lastName, nickName: "")
    }
}

struct Journal {
    let owner: Person
    var entries: [JournalEntry]
    
    mutating func addEntry(title: String, text: String) {
        let entry = JournalEntry.init(title: title, text: text)
        entries.append(entry)
    }
}

extension Journal {
    init(owner: Person) {
        self.owner = owner
        self.entries = []
    }
}

class JournalEntry {
    let title: String
    let text: String
    let date: NSDate
    
    init(title: String, text: String) {
        self.title = title
        self.text = text
        self.date = NSDate()
    }
}

class JournalController {
    var journal: Journal
    
    init(owner: Person) {
        self.journal = Journal.init(owner: owner)
    }
    
    func addEntry(title: String, text: String) {
        journal.addEntry(title: title, text: text)
    }
}



