//: [Previous](@previous)

enum pet: String, CaseIterable{
    case dog = "🐶"
    case cat = "🐱"
    case mouse = "🐭"
    case parrot = "🦜"
    case turtle = "🐢"
    
    var type: String{
        switch self{
        case.dog, .cat, .mouse: return "mamifero"
        case .turtle: return "reptil"
        case.parrot: return "ave"
        }
    }
    init?(name: String){
        switch name{
        case "dog": self.init(rawValue: "🐶")
        case "cat": self.init(rawValue: "🐱")
        case "mouse": self.init(rawValue: "🐭")
        case "parrot": self.init(rawValue: "🦜")
        default: return nil
        }
    }
}

let myPet = pet.dog.type
let myBird = pet.parrot.type
let myReptile = pet.turtle.type

let myDog = pet(name: "dog")

