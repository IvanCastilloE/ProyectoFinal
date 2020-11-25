//
//  Evento.swift
//  listaEventos
//
//  Created by Alumno on 11/10/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import Foundation

class Evento{
    var titulo : String
    var director : String
    var fecha : String
    var duracion : String
    var imagen : String
    
    init(titulo : String, director : String, fecha : String, duracion : String, imagen : String) {
        self.titulo = titulo
        self.director = director
        self.fecha = fecha
        self.duracion = duracion
        self.imagen = imagen
    }
}
