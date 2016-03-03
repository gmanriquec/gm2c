//: Playground - noun: a place where people can play

import UIKit
let range = 0...100
for i in range{
    if i % 2 == 0{
        print("\(i) par!!!")
        if i % 5 == 0{
            print("\t\(i) Bingo!!!")
        }
        if i >= 30 && i <= 40{
            print("\t\t\(i) Viva Swift!!!")
        }
    }else if i % 2 != 0{
        print("\(i) par!!!")
        if i % 5 == 0{
            print("\t\(i) Bingo!!!")
        }
        if i >= 30 && i <= 40{
            print("\t\t\(i) Viva Swift!!!")
        }
    }
}