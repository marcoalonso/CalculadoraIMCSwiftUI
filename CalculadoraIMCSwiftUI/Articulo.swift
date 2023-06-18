//
//  Articulo.swift
//  CalculadoraIMC
//
//  Created by Marco Alonso Rodriguez on 17/06/23.
//

import Foundation
import UIKit

struct Articulo : Identifiable {
    let id = UUID()
    let nombre: String
    let url: String
    let fuente: String
    let imagen: UIImage
}

var articulos = [
    Articulo(nombre: "¿Qué es el índice de masa corporal?", url: "https://www.gob.mx/issste/articulos/que-es-el-indice-de-masa-corporal", fuente: "gob.mx", imagen: UIImage(named: "gob")!),
Articulo(nombre: "Índice de masa corporal", url: "https://www.cdc.gov/healthyweight/spanish/assessing/bmi/index.html", fuente: "cdc.gov", imagen: UIImage(named: "cdc")!),
Articulo(nombre: "¿Qué es el índice de masa corporal y cómo se mide?", url: "https://labuenanutricion.com/blog/que-es-el-indice-de-masa-corporal-y-como-se-mide/", fuente: "labuenanutricion.com", imagen: UIImage(named: "labuena")!),
Articulo(nombre: "índice de masa corporal", url: "https://www.cancer.gov/espanol/publicaciones/diccionarios/diccionario-cancer/def/indice-de-masa-corporal", fuente: "cancer.gov", imagen: UIImage(named: "cancer")!),
Articulo(nombre: "Índice de masa corporal", url: "https://es.wikipedia.org/wiki/%C3%8Dndice_de_masa_corporal", fuente: "Wikipedia", imagen: UIImage(named: "wiki")!),
    Articulo(nombre: "TOPDOCTORS", url: "https://www.topdoctors.es/diccionario-medico/indice-de-masa-corporal-imc", fuente: "TopDoctors", imagen: UIImage(named: "top")!)
]
