//: [Previous](@previous)

import Foundation

class Vehicle{
    var brand: String
    let model: String
    var owner: String?
    let serialNumber: String
    var wheels: Int?
    
    var type: String{
        return(wheels ?? 0) > 0 ? "land" : "other"
    }
    
    var registration: (name: String, serialNumber: String, type: String)?{
        get {
            if let owner = owner{
                return(owner, serialNumber, type)
            }
            return nil
        }
        set(newRegistration){
            if let newRegistration = newRegistration{
                owner = newRegistration.name
            }
        }
    }
    init(brand: String,model: String, serialNumber: String, wheels: Int?) {
        self.brand = brand
        self.model = model
        self.serialNumber = serialNumber
        self.wheels = wheels
    }
    
    private var isMoving: Bool = false
    func move(){
        isMoving = true
    }
    func stop(){
        isMoving = false
    }
    
    static func describe(){
        print("a vehicle!")
    }
    
    func makeNoise() -> String{"Noise"}
    
}

var myVehicle = Vehicle(brand:"Benetti", model: "toyota", serialNumber: "1k2f34Ghtzvia", wheels: nil)

myVehicle.registration = (name: "Cris", serialNumber: "hdjdkks", type: "pther")
Vehicle.describe()


class Car: Vehicle{
    override var type: String{
        return "Car"
    }
    
    var isElectric: Bool
    
    init(electric: Bool){

        //asegurarnos de que estemos completos y asegurarnos que el super este completo
        self.isElectric = electric
        super.init(brand: "Tesla", model: "some", serialNumber: "kdkdk494oel", wheels: 4)
    }

    override func makeNoise() -> String {"BRRRRRR"}
    
    override init(brand: String, model: String, serialNumber: String, wheels: Int?) {
        isElectric = brand == "tesla"
        super.init(brand: brand, model: model, serialNumber: serialNumber, wheels: wheels)
        
    }
    
    init(brand: String, model: String, serialNumber: String, isElectric: Bool) {
        
        self.isElectric = isElectric
        super.init(brand: brand, model: model, serialNumber: serialNumber, wheels: 4)
    }
    
    convenience init(suzukiModel model: String, serialNumber: String, isElectric: Bool, bougthBy name: String){
        self.init(brand: "Susuki", model: model, serialNumber: serialNumber, isElectric: isElectric)
        owner = name
    }
    
    //Romero Garcia Cristian Guillermo
    override var brand: String{
        willSet(newbrand){
            print("My new name is \(newbrand)")
        }didSet{
            print("My old name was \(oldValue)")
        }
    }
    
    
}

let myCar = Car(electric: true)
myCar.isElectric
myCar.brand
myCar.makeNoise()
let yourCar = Car(brand: "Susuki", model: "Swift", serialNumber: "hddhj38339", isElectric: false)
yourCar.brand = "Tesla"

