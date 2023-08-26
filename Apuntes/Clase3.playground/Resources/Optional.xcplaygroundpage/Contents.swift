//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//tipo de dato que puede ser de cualquier tipo
// un generico

var cellphone: String = "5543421492"
var landline: String? = "0000"

print(cellphone)
print(landline ?? "no tengo telefono")
//print(landline!)

if let landline2 = landline{
    print(landline2)
}

guard let landline2 = landline else{
    fatalError("oops")
}

print(landline2)
