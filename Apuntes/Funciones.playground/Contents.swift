import Foundation


func myAwsomePrintingFunction(name: String) {
    print("Hello \(name)! Welcome to my class")
}

myAwsomePrintingFunction(name: "Cristofol")

func add(lhs: Int, rhs: Int){
    print("\(lhs) + \(rhs) = \(rhs + lhs) ")
}

add(lhs: 2, rhs: 2)

func printWelcomeMessage(to name: String, course: String = "Diplomado iOS"){
    print("Hello \(name), Welcome to \(course)")
}

printWelcomeMessage(to: "Cristian", course: "Diplomado android")
printWelcomeMessage(to: "Gael")

var error = "The process failed: "
//pasar una variable externa que al identificarla la guarda en esa misma variable
func appendErrorCode(_ code: Int, toErrorString errorString: inout String){
    if code == 400{
        errorString += "bad request."
    }
}
print(error)
appendErrorCode(400, toErrorString: &error)
print(error)

func welcomeMessage(to name: String) -> String {
    return "Welcome \(name)"
}

let message = welcomeMessage(to: "Cristian")
print(message)

print(welcomeMessage(to: "Gael"))

func areaOfTrianguleWith(base: Double, heigth: Double) -> Double{
    let rectangle = base * heigth
    
    func divide() -> Double {
        let someMessage = ""
        return rectangle/2
    }
    return divide()
}

print(areaOfTrianguleWith(base: 3, heigth: 5))

func sortedEvenOddNumbers(_ numbers: [Int]) -> (evens: [Int], odds: [Int]){
    var evens = [Int]()
    var odds: [Int] = []
    
    for number in numbers {
        if number % 2 == 0 {
            evens.append(number)
        }else {
            odds.append(number)
        }
    }
    return (evens: evens, odds: odds)
}

let aBunchOfNumbers = [10, 1, 4, 3, 57, 43, 27, 84]
let sortedEvenAndOddNumbers = sortedEvenOddNumbers(aBunchOfNumbers)
print("The even numbers are: \(sortedEvenAndOddNumbers.evens)")
print("The odd numbers are: \(sortedEvenAndOddNumbers.odds)")


func grabMiddleName(fullName name: (first: String, middle: String?, last: String)) -> String?{
    return name.middle
}

let middleName = grabMiddleName(fullName: (first: "Alejandro", middle: "middle Name", last: "Mendoza" ))


if let middleName = middleName {
    print(middleName)
}


func greetByMiddleName(fromFullname name:  (first: String, middle: String?, last: String) /*,age: Int*/){
    if let middle = name.middle{
        guard let middlename = name.middle /*, age > 18*/ else{
            print("Hey there!")
            return
        }
        
        print("Hey, \(middlename)")
    }
}

greetByMiddleName(fromFullname: (first: "Cristian", middle: "Guillermo", last: "Romero")/*, age: 19*/)


func sortedEvenOddNumbers(_ numbers: [Int]) -> (even: [Int], odd: [Int]){
    return (even: [], odd: [])
}


