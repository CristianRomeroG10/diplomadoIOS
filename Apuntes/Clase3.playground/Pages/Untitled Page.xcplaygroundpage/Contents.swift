import UIKit

//MARK: estructuras de control

// Condicionales

let animal = "cat"
let number = 2

if animal == "dog"{
    print("It´s a dog!!")
}else{ //operadores binarios
    print("Not a dog :(")
}


if animal != "dog"{
    print("Not a dog!!")
}else{ //operadores binarios
    print("It´s a dog:(")
}

if !(animal == "dog"){
    print("Not a dog:(")
}else{ //operadores binarios
    print("It´s a dog!!")
}


if animal.count <= 4 {
    print("less than 4 letters")
}else{
    print("too many letters")
}

//OR
if animal == "dog" || animal == "cat"{
    print("common pet")
}else{
    print("what is it?!")
}
//AND
if animal == "dog" && animal == "cat"{
    print("common pet")
}else{
    print("what is it?!")
}

if animal == "dog"{
    print("It´s a dog!!")
}else if number == 2{
    print("Number 2")
}else{
       print("its nos a dog")
}

// para la industris
/*if #available(ios 16.6, *){
    //solo para ios
}else {
    //codigo para so anteriores
}

if #unavailable(ios 15.0){
    //Para anteriores
}*/

//MARK: operador terniario
number == 2 ? print("it´s a 2!") : print("some other number")

var value = number == 2 ? number : 4
value

//Experiment




//var weather: [String] = ["lluvia", "nieve"]
//var time = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23]

let nieve = "nieve"
let lluvia = "lluvia"


if nieve == "nieve"{
    print("🌨️")
}else{
    
}

var weather = "lluvia"
var time = 12

var dark = Array(0...6) + Array(19...23)
var ligth = 7...16

if weather == "lluvia"{
    print("🌧️")
}else if weather == "nieve"{
    print("🌨️")
}

if ligth ~= time{
    print("usa bloqueador")
}else{
    print("no necesitas bloqueador")
}
