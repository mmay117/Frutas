//
//  ViewController.swift
//  Futas
//
//  Created by Usuario invitado on 5/10/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var fruta = [frutas]()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return fruta.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for : indexPath)
        cell.textLabel?.text = "\(fruta[indexPath.row].nombre)"
        return cell
    }
    
    

    @IBOutlet weak var tabla: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    fruta.append(frutas(imagen: "fresa", nombre: "Fresa", precio: 16.0))
    fruta.append(frutas(imagen: "mango", nombre: "Mango", precio: 19.5))
    fruta.append(frutas(imagen: "manzana", nombre: "Manzana", precio: 14.0))
    fruta.append(frutas(imagen: "naranja", nombre: "Naranja", precio: 13.0))
    fruta.append(frutas(imagen: "piña", nombre: "Piña", precio: 16.0))

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "seg" {
          let indexPath = tabla.indexPathForSelectedRow
            let destino = segue.destination as! SecondViewController
            destino.vista1 = fruta [(indexPath?.row)!]
        }
        
    }
    @IBAction func unwindSecondView (segue: UIStoryboardSegue) {
    
    }


}

