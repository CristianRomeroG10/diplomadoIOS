//: [Previous](@previous)

import Foundation

// lenguaje funcional
/*4 grandes rubros
 funciones puras
 clara inmutabilidad
 lenguajes de tipado duro
 */

//map
//filter
//reduce

let volunteerCounts:[Int] = [1,3,40,32,2,53,77,13]
let volunteerAverage: [Double] = [10.75, 4.2, 1.5, 12.12, 16.816]

//map
//itera y modifica el arreglo, te regresa el arreglo del mismp tamaño

//let roundedVolunteers = volunteerAverage.map {number in
//    let roundenNumber = Int(number)
//    return "\(roundenNumber)"
//}
let roundedVolunteers = volunteerAverage.map {number in
    return Int(number)
}


print(roundedVolunteers)

//filter
//itera y regresa un arreglo menor o igual
let passingVolunteers = roundedVolunteers.filter{ number in
    return number >= 10
}
print(passingVolunteers)

//reduce -- regresa un unico valor

let totalVolunteers = passingVolunteers.reduce(0){
   partialResult, number in
    return partialResult + number
}
print(totalVolunteers)


//: [Next](@next)

let finalVolunteerdescription = passingVolunteers.reduce("The volunteers were"){ partialResult, number in
    return partialResult + " \(number)"
    
}

print(finalVolunteerdescription)
