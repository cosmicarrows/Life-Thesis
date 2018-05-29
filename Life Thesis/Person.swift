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


class DangerousWorker {
    var entries: [JournalEntry]
    
    init() {
        //add test entries
        let entry = JournalEntry.init(title: "Walking", text: "I was walking in the loop")
        entries = Array.init(repeating: entry, count: 100)
    }
    
    func dangerousMultithreading() {
        
      
        
        
        DispatchQueue.global(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0).async() {
            sleep(1) //emulate work
            self.entries.removeAll()
        }
        
        NSLog("Start Main")
        for _ in 0..<entries.endIndex {
            entries.removeLast() //crash
            sleep(1) //emulate work
        }
    }
}


