//
//  User.swift
//  K_Bank
//
//  Created by Fausto Checa on 21/8/18.
//  Copyright © 2018 Fausto Checa. All rights reserved.
//

import Foundation

class User {
    var name: String
    var balance: Int
    
    init(name: String, balance: Int) {
        self.name = name
        self.balance = balance
        
    }
    
    func withdraw(moneyToWithdraw: Int) {
        if balance >= moneyToWithdraw {
            self.balance = balance - moneyToWithdraw
            } else {
            print("not enough money non done transaction")
        }
        print("\(self.name) has balance: \(balance)")
    }
    
    func check(anotherUser: User, money: Int) {
        var anotherBalance = anotherUser.balance
        if money > anotherBalance {
            print("not enough money to do transaction, finished")
            return
        } else {
            self.balance = balance + money
            anotherBalance = anotherBalance - money
            print("\(self.name)'s balance is \(self.balance)")
            print("\(anotherUser.name)'s balance is \(anotherBalance)")
        }
    }
    
    func addCash(money: Int) {
        self.balance += money
        print("\(self.name) has balance: \(balance)")
    }
    
    
    
}
