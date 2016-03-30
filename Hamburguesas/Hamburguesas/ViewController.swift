//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Victor Manuel Hernandez R on 29/03/16.
//  Copyright © 2016 Gabriela Manrique. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nombrePais: UILabel!
    @IBOutlet weak var nombreHamburguesa: UILabel!
    
    let colores = Colores()
    var paises = ColeccionDePaises()
    let hamburguesas = ColeccionDeHamburguesa()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func QuieroUnaHamburguesa() {
            nombrePais.text = paises.obtenPais().0
            nombreHamburguesa.text = hamburguesas.obtenHamburguesa()
        
            let colorAleatorio = colores.colorAleatorio()
            view.backgroundColor = colorAleatorio
            view.tintColor = colorAleatorio

    }
    

}

