import UIKit

var greeting = "Hello, playground"
let constante = "Hola mundo"

// Variables y constantes
/*
 lugares donde guardamos información
 variable
 Palabra reservada var
 los valores se pueden editar
 Constante
 Palabra reservada let
 los valores no pueden ser cambiados
 */

greeting = "hola"
// constante = "hola" Esto no se puede
var n1 = 3, n2 = 3  //No recomendable

//Entero
//Doble
//String
//Booleano

var doble = 3.0
var booleano = true

var miEnteroUno: Int = 1
var miDoble: Double = 3.0
var miString: String = "hola"
var miBooleani: Bool = true

var miSegundoEntero: Int

var numeroUno = 0.1
var numeroDos = 0.2
//Siempre va a asignar un doble a menos qu enosotros lo especifiquemos
print(numeroUno + numeroDos)

//Operadores matematicos
numeroUno + numeroDos
numeroUno += numeroDos
numeroUno - numeroDos
numeroUno -= numeroDos
numeroUno / numeroDos
numeroUno * numeroDos

numeroUno > numeroDos  //mayor que
numeroUno < numeroDos  //menor que
numeroUno >= numeroDos //mayor o igual
numeroUno <= numeroDos //menor o igual
numeroUno == numeroDos //igual que
numeroUno != numeroDos //diferente que

//Cadenas
var miStringDos = "Adios"
var miStringTres = "Cristian "

miStringDos + miStringTres

var edad = 25
var nombre = "Cristian"
//Caracter de escape
print("Hola soy \(nombre) y tengo \(edad) años")

// arreglos, diccionarios, tuplas

//MARK: Arreglos
//Colecciones ordenadas que tienen un indice y permite valores repetidos
var array = [1,2,3,4]
var arrayDos = ["Pedro","Paco","Juan"]
var arrayTres: [String] = ["Pedro","Paco","Juan"]

array[0]
array.append(5)
array += [1,2,3,4]

//Set colleciones no ordenadas y no permite valores repetidos
//Deben respetar el protocolo Hashable
var miSet: Set<String> = ["Pedro","Paco","Juan"]

miSet.insert("Paco")
miSet.insert("paolo")

miSet.contains("Paco")

//MARK: Diccionarios

//Colecciones ordenadas pero se liga el valor con una llave
var miDiccionario: [String: String] = [:] // poara dejarlos vacios

var miDiccionarioDos = ["Nombre":"Grecia", "Edad":"18"]

miDiccionarioDos["ColorFavorito"] = "Rojo"

miDiccionarioDos
miDiccionarioDos["Nombre"]

//MARK: Tuplas
var colorUnoRojo = "rojo"
var codigoRojo = "00#fff"

var color = ("rojo","00#fff")
color.0
color.1

var alumno = ("Dante Sanchez",8)
alumno.0
alumno.1

var alumnoDos = (Nombre: "Dante Sanchez",Calificacion: 8)

alumnoDos.Calificacion
alumnoDos.Nombre
