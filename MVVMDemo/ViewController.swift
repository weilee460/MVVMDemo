//
//  ViewController.swift
//  MVVMDemo
//
//  Created by ying on 16/4/6.
//  Copyright © 2016年 ying. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstName: UILabel!
    @IBOutlet weak var lastName: UILabel!
    @IBOutlet weak var salutation: UILabel!
    @IBOutlet weak var birthdate: UILabel!
    
    var personViewModel: PersonViewModel?
    var person: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.person = Person(firstName: "feng", lastName: "zi", salutation: "Hello", birthdate: NSDate())
        self.personViewModel = PersonViewModel(person: person!)
        firstName.text = self.personViewModel?.nameText
        birthdate.text = self.personViewModel?.birthdate
    }


}

