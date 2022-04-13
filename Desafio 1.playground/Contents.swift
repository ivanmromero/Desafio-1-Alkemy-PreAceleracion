//  Alkemy Desafio 1.swift
//
//
//  Created by Ivan Romero on 06/04/2022.
//

//Consigna desafío 1
//Consigna desafío 1
//
//Para esta instancia de entrega, deberán desarrollar los puntos que se enumeran a continuación y entregarlo a través de un URL que redireccione al repo sobre el cual ustedes hayan trabajado.
//
//1 Definir una tupla que describa una dirección, con campos como ciudad, partido, provincia, calle, pais, codigoPostal, etc. Siéntanse libres de colocar todos los campos que consideren relevantes. Usar un diccionario para la calle con los campos nombreDeCalle, numero, entrecalle1 y entrecalle2.
//2 Dentro de la dirección, definir algunos tipos de datos opcionales, entre ellos piso y departamento.
//3 Definir tres direcciones en constantes.
//4 Escribir una función que reciba una dirección y la imprima como un String bien formateado. Hacer uso de la interpolación.
//5 Escribir una función que reciba un Array de direcciones y devuelva un String que contenga "piso: \(piso) ; depto: \(departamento)", SOLO para las direcciones que tengan definidos tanto un piso como un departamento.

//1 y 2

typealias Direccion = (ciudad: String, partido: String, provincia: String, calle: [String:Any?], pais: String, codigoPostal: String)

//3
let direccion1: Direccion = (ciudad: "Moron", partido: "Moron", provincia: "Buenos Aires", calle: ["nombreDeCalle":"Julian alvarez", "numero":"1234", "entrecalle1":"Nose", "entrecalle2":"Nose","piso": "3", "departamento": "B"], pais: "Argentina", codigoPostal: "1486")

let direccion2: Direccion = (ciudad: "Moron", partido: "Moron", provincia: "Buenos Aires", calle: ["nombreDeCalle":"Julian alvarez", "numero":"1234", "entrecalle1":"Nose", "entrecalle2":"Nose","piso": "1", "departamento": "A"], pais: "Argentina", codigoPostal: "1486")

let direccion3: Direccion = (ciudad: "Moron", partido: "Moron", provincia: "Buenos Aires", calle: ["nombreDeCalle":"Julian alvarez", "numero":"1234", "entrecalle1":"Nose", "entrecalle2":"Nose","piso": "2", "departamento": nil], pais: "Argentina", codigoPostal: "1486")

//4
func formatDirec (direc: Direccion){
    print ("\(direc)")
}
//5
func multipleAddress(data: [Direccion]) -> String {
  var address = ""

  for item in data {
      if let piso = item.calle["piso"] {
          address = "(address)\nPiso: \(piso), Depto: \(item.calle["departamento"])"
    }
  }
  return address
}





