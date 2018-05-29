//
//  Person.swift
//  Life Thesis
//
//  Created by Laurence Wingo on 5/28/18.
//  Copyright © 2018 Cosmic Arrows, LLC. All rights reserved.
//

import Foundation


class Person {
    let firstName: String
    let lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

class Journal {
    let title: String
    let text: String
    let date: NSDate
    
    init(title: String, text: String) {
        self.title = title
        self.text = text
        self.date = NSDate()
    }
}

