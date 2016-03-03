//: Playground - noun: a place where people can play

/*Imprimir una serie de nùmeros del 1 al 100
 1.- Si el numero es divisible entre 5 imprime: #Bingo!!!
 2.- Si el numero es par imprime : #par
 3.- Si el numero es impar imprime: #impar
 4.- Si el numero se encuentra entre 30 y 40 imprime: #Viva Swift !!!
 */

import UIKit


for var i = 1; i <= 100; i += 1 {
    if  i % 5 == 0 {
        print("\(i) Bingo!!!")
    }
    
    if i % 2 == 0 {
        print ("\(i) es par")
    }
    
    if i % 2 != 0 {
        print("\(i) es impar")
    }
    
    if i >= 30 && i <= 40 {
        print ("\(i) Viva Swift !!!")
    }
    
}
