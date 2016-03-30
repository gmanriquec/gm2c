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
    
    let hamburguesas = ["Bozzi Prime Steak Burger - Mexico", "Alfredo's Barbacoa - España", "Back Angus - Estados Unidos", "Hatrick - Suiza", "Burgueresse - Holanda", "Berlin Burger International - Alemania", "Blend - París", "Boom Burger - Londres", "Yakiniku Burger - Tokio", "Strolghino - Roma", "Negro Carbón - Argentina", "Bacon Cheseburger - Bogota", "Hamburguesa de Ternera - India", "Let´s Burger - China", "Hamburguesa clásica de picaña BBQ - Brasil", "Submarino do Portas - Portugal", "Tteok galbi - Corea", "Bifteki - Grecia", "Bachelor - Belgica", "Hamburguesa de Emu - Australia"]

    /*let posicion1: Int
    
    init(posicion1: Int){
        self.posicion1 = posicion1
        
    }*/
    
    func obtenHamburguesa() -> (String){
        let posicion1 = obtenPais().1
        return hamburguesas[posicion1]
    }
}

