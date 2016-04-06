//
//  PersonViewModel.swift
//  MVVMDemo
//
//  Created by ying on 16/4/6.
//  Copyright © 2016年 ying. All rights reserved.
//

//View Model
import Foundation

class PersonViewModel {
     var person: Person
     var nameText: String
     var birthdate: String
    
    init(person: Person)
    {
        
        self.person = person
        if self.person.salutation.characters.count > 0 {
            nameText = "\(self.person.salutation), \(self.person.firstName), \(self.person.lastName)"
        }
        else{
            nameText = "\(self.person.firstName), \(self.person.lastName)"
        }
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "EEEE MMMM d, yyyy"
        self.birthdate = dateFormatter.stringFromDate(self.person.birthdate)
    }
    
}

