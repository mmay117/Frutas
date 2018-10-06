//
//  SecondViewController.swift
//  Futas
//
//  Created by Usuario invitado on 5/10/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var vista1 : frutas = frutas (imagen : "", nombre : "", precio : 0.0)
    
    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var precio: UILabel!
    @IBAction func back(_ sender: UIButton) {
    }
    @IBAction func carro(_ sender: UIButton) {
        
        compras.append (vista1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    nombre.text = vista1.nombre
    imagen.image = UIImage( named: vista1.imagen)
    precio.text = vista1.precio.description
    }

   

}
