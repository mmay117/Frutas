//
//  ThirdViewController.swift
//  Futas
//
//  Created by Usuario invitado on 5/10/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    @IBOutlet weak var Total: UILabel!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return compras.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "compras", for : indexPath)
        cell.textLabel?.text = "\(compras[indexPath.row].nombre) - \(compras[indexPath.row].precio)"
        return cell
    }
    var Total2: Double = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        for i in compras{
          Total2 =  i.precio + Total2
        }
        Total.text = "Total:  \(Total2)"
        
    }

    @IBOutlet weak var Table: UITableView!
    
}
