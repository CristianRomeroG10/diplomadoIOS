
import Foundation

var greeting = "Hello, playground"

var casilla = 0
print("inicio estas en la casilla \(casilla)")
while(casilla < 24){
    var valorDado = Int.random(in: 1...6)
    casilla = casilla + valorDado
    print("El dado cayo en \(valorDado) y te encuentras en la casilla \(casilla)")
    
    if casilla == 2{
        casilla = 10
        print("Escalera :) : Subiste a la casilla \(casilla)")
    }else if casilla == 5{
        casilla = 16
        print("Escalera :) : Subiste a la casilla \(casilla)")
    }else if casilla == 8{
        casilla = 17
        print("Escalera :) : Subiste a la casilla \(casilla)")
    }else if casilla == 9{
        casilla = 11
        print("Escalera :) : Subiste a la casilla \(casilla)")
    }else if casilla == 13{
        casilla = 3
        print("Serpiente :( : Bajaste a la casilla \(casilla)")
    }else if casilla == 18{
        casilla = 7
        print("Serpiente :( : Bajaste a la casilla \(casilla)")
    }else if casilla == 21{
        casilla = 10
        print("Serpiente :( : Bajaste a la casilla \(casilla)")
    }
    else if casilla == 23{
        casilla = 15
        print("Serpiente :( : Bajaste a la casilla \(casilla)")
    }else if casilla >= 24{
        print("Felicidades ganaste el juego")
    }
    
}




