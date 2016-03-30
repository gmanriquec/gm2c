//
//  Datos.swift
//  Hamburguesas
//
//  Created by Victor Manuel Hernandez R on 29/03/16.
//  Copyright © 2016 Gabriela Manrique. All rights reserved.
//

import Foundation
import UIKit

class ColeccionDePaises{
    
    var paises = ["Mexico", "España", "Estados Unidos", "Suiza", "Holanda", "Alemania", "París", "Londres", "Tokio", "Roma", "Argentina", "Bogotá", "India", "China", "Brasil", "Portugal", "Corea", "Grecia", "Belgica", "Australia"]
    
    /*var posicion: Int
    
    init(posicion:Int){
        self.posicion = posicion
    }*/
    
    func obtenPais() -> (String, Int){
        let posicion = Int (arc4random()) % paises.count
        return(paises[posicion], posicion)
    }
}

class ColeccionDeHamburguesa: ColeccionDePaises {
    
    let hamburguesas = ["Bozzi Prime Steak Burger", "Alfredo's Barbacoa", "Back Angus", "Hatrick", "Burgueresse", "Berlin Burger International", "Blend", "Boom Burger", "Yakiniku Burger", "Strolghino", "Negro Carbón", "Bacon Cheseburger", "Hamburguesa de Ternera", "Let´s Burger ", "Hamburguesa clásica de picaña BBQ", "Submarino do Portas", "Tteok galbi", "Bifteki", "Bachelor", "Hamburguesa de Emu"]

    /*let posicion1: Int
    
    init(posicion1: Int){
        self.posicion1 = posicion1
        
    }*/
    
    func obtenHamburguesa() -> (String){
        let posicion1 = obtenPais().1
        return hamburguesas[posicion1]
    }
}

