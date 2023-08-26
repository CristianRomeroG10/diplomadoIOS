//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"
print(greeting)
//nos dicen los tipos de primera clase
//pueden ser de muchos tipos
//un unico valor asignado
//valores computados
//extender protocolos
//uperCamelCase y singular

enum pet: String, CaseIterable{
    case dog = "🐶"
    case cat = "🐱"
    case mouse = "🐭"
    case parrot = "🦜"
    case turtle = "🐢"
}

let myPet = pet(rawValue: "🦜")
let myTurtle: pet = .turtle
let myParakeet = pet.parrot

switch myPet {
case .dog: print("🐶")
default: print(myPet!.rawValue)
}

switch myPet {
case .dog: print("🐶")
default: print(myPet!.rawValue)
}

let allCases = pet.allCases

for pet in allCases{
    print(pet.rawValue)
}


enum ContactMethod {
    case email(String)
    case phone(Int)
    case mail(streetName: String, zipCode: String, streetNumber: Int)
}

var myPreferredContactMethod = ContactMethod.email("myemail@email.me")

switch myPreferredContactMethod{
case.email(let strEmail): print(strEmail)
case.phone(let num): print(num)
case.mail(streetName: let name, zipCode: let zc, streetNumber: let num):
    print("Adress street \(name), \(num), \(zc)")

}




enum AritmeticExpression{
    case number(Int)
    indirect case addition(AritmeticExpression,AritmeticExpression)
    indirect case multiplication(AritmeticExpression,AritmeticExpression)
    indirect case resta(AritmeticExpression,AritmeticExpression)
    indirect case division(AritmeticExpression,AritmeticExpression)
    
}
// ((5+4)*2)
let five = AritmeticExpression.number(5)
let four = AritmeticExpression.number(4)
let sum = AritmeticExpression.addition(five, four)
let product = AritmeticExpression.multiplication(sum, AritmeticExpression.number(2))


func evaluate(expression: AritmeticExpression) -> Int {
    switch expression{
    case.number(let number): return number
    case .addition(let leftExp, let rigthExp): return evaluate(expression: leftExp) + evaluate(expression: rigthExp)
    case .multiplication(let leftExp, let rigthExp): return evaluate(expression: leftExp) * evaluate(expression: rigthExp)
    case .resta(let leftExp, let rigthExp): return evaluate(expression: leftExp) - evaluate(expression: rigthExp)
        
    case .division(let leftExp, let rigthExp):return evaluate(expression: leftExp) / evaluate(expression: rigthExp)
    }
}

evaluate(expression: product)

// (6+(4*(8-1)))/2

let resta = AritmeticExpression.resta(AritmeticExpression.number(8), AritmeticExpression.number(1))
let multiplicacion = AritmeticExpression.multiplication(AritmeticExpression.number(4), resta)
let suma = AritmeticExpression.addition(AritmeticExpression.number(6), multiplicacion)
let div = AritmeticExpression.division(suma, AritmeticExpression.number(2))

evaluate(expression: div)
