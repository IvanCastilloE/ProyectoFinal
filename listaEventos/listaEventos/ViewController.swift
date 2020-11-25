//
//  ViewController.swift
//  listaEventos
//
//  Created by Alumno on 11/10/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    var eventos : [Evento] = []
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 280
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventos.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celdaEvento = tableView.dequeueReusableCell(withIdentifier: "celdaEvento") as! CeldaEventoController
        celdaEvento.lblTitulo.text = eventos[indexPath.row].titulo
        celdaEvento.lblDirector.text = eventos[indexPath.row].director
        celdaEvento.lblFecha.text = eventos[indexPath.row].fecha
        celdaEvento.lblDuracion.text = eventos[indexPath.row].duracion
        celdaEvento.lblPelicula.image = UIImage(named: eventos[indexPath.row].imagen)
        
        return celdaEvento
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        eventos.append(Evento(titulo: "The shining", director: "Stanley parable", fecha: "1981", duracion: "1:40", imagen: "brissa"))
        
        eventos.append(Evento(titulo: "Amores Perros", director: "Alejandro Gonzales", fecha: "2000", duracion: "1:40", imagen: "perros"))
        
        eventos.append(Evento(titulo: "Shrek", director: "Andrew Adamson", fecha: "2001", duracion: "1:40", imagen: "shrek"))
        
        eventos.append(Evento(titulo: "Volver al Futuro", director: "Robert Zemeckis", fecha: "1985", duracion: "1:40", imagen: "futuro"))
        
        eventos.append(Evento(titulo: "Spykids 3 D", director: "Roberto Gomez Bolaños", fecha: "1985", duracion: "1:40", imagen: "spykids3d"))
    }


}
