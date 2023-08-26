
import Foundation

var greeting = "Hello, playground"
print(greeting)

var animal = "dog"
switch animal{
case "dog", "cat" : print("🐶🐱 A mi me gustan mucho de esos")
case "mouse": print("🐭")
case "bird": print("🐦‍⬛")
default: break
}

let grade = 10

switch grade {
case ...5: print("Failed")
case 6..<9: print("Meh")
case 9: print("9 is great!!")
case 10: print("Wow")
default: print(":v")
}

//asignar a una variable un valor
let color = (255, 150, 1)

/*switch color{
case (_,_,255):
    print("max blue")
    fallthrough
case (_,255,_): print("max green")
    fallthrough
case (255,_,_): print("max red")
default: break
}*/

switch color{
case let(255,g,b) where g < 255:
    print("max red with green \(g) and blue: \(b)")
case (let r,let g,255): print("RED:\(r), GREEN:\(g), max blue")
case let(r,255,b): print("red:\(r),max green, blue: \(b)")
default: break
}


let coordenada = (0,1)

switch coordenada{
case let(ejex,ejey) where ejex>0 && ejey>0 && ejex <= 5 && ejey <= 5: print("Estas en el cuadrante 1. con las coordenadas: ejeX:\(ejex), ejeY:\(ejey)")
case let(ejex,ejey) where ejex<0 && ejey>0 && ejex >= -5 && ejey <= 5 : print("Estas en el cuadrante 2. con las coordenadas: ejeX:\(ejex), ejeY:\(ejey)")
case let(ejex,ejey) where ejex<0 && ejey<0 && ejex >= -5 && ejey <= -5: print("Estas en el cuadrante 3. con las coordenadas: ejeX:\(ejex), ejeY:\(ejey)")
case let(ejex,ejey) where ejex>0 && ejey<0 && ejex <= 5 && ejey >= -5: print("Estas en el cuadrante 4. con las coordenadas: ejeX:\(ejex), ejeY:\(ejey)")
case let(ejex,ejey) where ejex==0 && ejey==0 : print("Estas en el origen. con las coordenadas: ejeX:\(ejex), ejeY:\(ejey)")
case let(ejex,ejey) where ejex == 0 && ejey<5 || ejey > 5: print("estas en el eje x")
case let(ejex,ejey) where ejey == 0 && ejex<5 || ejex > 5: print("estas en el eje x")
default: print("fuera del cuadrante")
}



//MARK: GUARD


guard animal == "dog" else {
    fatalError("It´s not a dog")
}
