//: [Previous](@previous)

import Foundation

protocol Student: CustomStringConvertible {
    var accountNumber: Int { get }
    var name: String { get }
}

struct EngineeringStudent: Student{
    var description: String{
        return "Engineering student - \(name)"
    }
    
    var accountNumber: Int
    
    var name: String
    
    let hasCalculator: Bool
}

struct MedicinesStudents: Student{
    var description: String{
        return "Medicine student - \(name)"
    }
    
    var accountNumber: Int
    
    var name: String
    var hasLabCoat: Bool

}

let engineeringStudent = EngineeringStudent(accountNumber: 316014328, name: "Cristian", hasCalculator: true)
let medicindStudent = MedicinesStudents(accountNumber: 23122223, name: "Yaritza", hasLabCoat: false)

func printStudentsInformation(_ student: Student){
    print("\(student.name) - \(student.accountNumber) ")
    
    if let medicineStudent = student as? MedicinesStudents{
        print(medicineStudent.hasLabCoat)
    }
}

printStudentsInformation(engineeringStudent)
printStudentsInformation(medicindStudent)

print(engineeringStudent)
print(medicindStudent)
