//
//  Person.swift
//  MVVMDemo
//
//  Created by ying on 16/4/6.
//  Copyright © 2016年 ying. All rights reserved.
//

//Model
import Foundation

class Person {
    
     var firstName: String
     var lastName: String
     var salutation: String
     var birthdate: NSDate
    
    init(firstName: String, lastName: String, salutation: String, birthdate: NSDate)
    {
        self.firstName = firstName
        self.lastName = lastName
        self.salutation = salutation
        self.birthdate = birthdate
    }
}
