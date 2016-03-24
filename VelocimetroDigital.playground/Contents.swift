//: Velocimetro Digital : Minireto 2

import UIKit

//Enumeración Velocidades

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
    
    var descripcionVelocidad:String {
        switch self {
        case .Apagado:
            return "Apagado"
        case .VelocidadBaja:
            return "Velocidad Baja"
        case .VelocidadMedia:
            return "Velocidad Media"
        case .VelocidadAlta:
            return "Velocidad Alta"
        }
    }
}

// Clase Auto

class Auto{
    var velocidad:Velocidades
    var aumentaVel = true
    
    init(){
        self.velocidad = .Apagado
    }
    
    func cambioDeVelocidad() -> (actual:Int, velocidadEnCadena: String){
        let velocidadActual = self.velocidad
        
        if aumentaVel{
            if self.velocidad == .Apagado {
                self.velocidad = .VelocidadBaja
            } else if self.velocidad == .VelocidadBaja {
                self.velocidad = .VelocidadMedia
            } else if self.velocidad == .VelocidadMedia {
                self.velocidad = .VelocidadAlta
            } else {
                self.aumentaVel = false
                self.velocidad = .VelocidadMedia
            }
        }
        else {
            if self.velocidad == .VelocidadAlta{
                self.velocidad = .VelocidadMedia
            } else if self.velocidad == .VelocidadMedia{
                self.velocidad = .VelocidadBaja
            } else if self.velocidad == .VelocidadBaja {
                self.velocidad = .Apagado
            }else {
                self.aumentaVel = true
                self.velocidad = .VelocidadBaja
            }
        }
        
        print ("\(velocidadActual.rawValue), \(velocidadActual.descripcionVelocidad)")
        
        return (velocidadActual.rawValue, velocidadActual.descripcionVelocidad)
    }
}

var auto = Auto()

for var i = 1; i <= 20; i += 1{
    auto.cambioDeVelocidad()
}