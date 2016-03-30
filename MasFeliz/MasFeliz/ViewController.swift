//
//  ViewController.swift
//  MasFeliz
//
//  Created by Victor Manuel Hernandez R on 28/03/16.
//  Copyright © 2016 Gabriela Manrique. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensajePositivo: UILabel!
    let colores = Colores()
    let frases = Frases()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dameUnMensajePositivo() {
        //print ("Esto será muy positivo")
        mensajePositivo.text = frases.fraseAleatoria();
        let colorAleatorio = colores.colorAleatorio()
        view.backgroundColor = colorAleatorio
        view.tintColor = colorAleatorio
    }

   }

