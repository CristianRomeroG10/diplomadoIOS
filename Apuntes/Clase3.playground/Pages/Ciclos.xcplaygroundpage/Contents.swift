//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"
print(greeting)
for i in 1...5{
    print(i)
}

let numbers = [1,3,5,7]

for number in 0...numbers.count{
    print(number)
}

let intervals = stride(from: 0, to: 20, by: 5)
//let intervals = stride(from: 0, through: 20, by: 5)

for interval in intervals {
    print(interval)
}



// con diccionarios

let pokemon = ["Fire":"Charmander", "water": "mudkip", "Grass": "Turtwing", "Electric":"Picachu"]

for(type, name) in pokemon {
    print("I like \(name) of type \(type)")
}
print("\n\n\n")
for poke in pokemon{
    print("I like \(poke.value) of type \(poke.key)")
}

let names: Set = ["james","Dean","Sam","Steve","Chris"]
print("\n For.in loop with counter as index")
var index = 0

for _ in names {
    print(index)
    index += 1
}
print("\n For-in loop enumerated")
for (index2, name) in names.enumerated() {
    print(index2, name)
}

for (index, pokemon) in pokemon.enumerated() {
    print("\(index), \(pokemon)")
}

for (index, (type, name)) in pokemon.enumerated() {
    print("\(index), \(type) \(name)")
}

for (index, name) in names.enumerated(){
    if index % 2 == 0 {
        print(name)
    }else{
        break
    }
}
//let names: Set = ["james","Dean","Sam","Steve","Chris"]

for (index, name) in names.enumerated(){
    if index % 2 == 0 {
        continue
    }
    print(name)
}

for (index, name) in names.enumerated()
    where index % 2 == 0{
        print(name)
    
}

for poke in pokemon where poke.key == "Fire"{
    print(poke.value)
}
