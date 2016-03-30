//
//  ColoresStruct.swift
//  Hamburguesas
//
//  Created by Victor Manuel Hernandez R on 29/03/16.
//  Copyright © 2016 Gabriela Manrique. All rights reserved.
//

import Foundation
import UIKit


struct Colores{
    let colores = [UIColor(red:210/255.0, green: 90/255.0, blue:42/255.0, alpha:1),
                   UIColor(red:40/255.0, green: 170/255.0, blue:42/255.0, alpha:1),
                   UIColor(red:3/255.0, green: 180/255.0, blue:90/255.0, alpha:1),
                   UIColor(red:210/255.0, green: 90/255.0, blue:5/255.0, alpha:1),
                   UIColor(red:120/255.0, green: 120/255.0, blue:50/255.0, alpha:1),
                   UIColor(red:130/255.0, green: 80/255.0, blue:90/255.0, alpha:1),
                   UIColor(red:130/255.0, green: 130/255.0, blue:130/255.0, alpha:1),
                   UIColor(red:3/255.0, green: 50/255.0, blue:90/255.0, alpha:1)]
    
    func colorAleatorio() -> UIColor{
        let posicion = Int (arc4random()) % colores.count
        return colores[posicion]
        
    }
}