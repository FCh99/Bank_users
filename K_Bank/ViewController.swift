//
//  ViewController.swift
//  K_Bank
//
//  Created by Fausto Checa on 21/8/18.
//  Copyright © 2018 Fausto Checa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let fausto = User(name: "Fausto", balance: 100)
        let paco = User(name: "Paco", balance: 80)
        let juan = User(name: "Juan", balance: 200)

        fausto.withdraw(moneyToWithdraw: 40)
        print("---------------")
        fausto.check(anotherUser: paco, money: 5)
        print("---------------")
        fausto.addCash(money: 200)
        print("---------------")
        juan.check(anotherUser: fausto, money: 40)
        
        
    }

    

}

