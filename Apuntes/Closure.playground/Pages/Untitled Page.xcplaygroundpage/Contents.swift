import Foundation

// Closures

let volunteerCounts = [1,3,40,32,2,53,77,13]

//func isAscending(_ i: Int, _ j: Int) -> Bool {
//    return i < j
//}
//
//let volunteerSorted = volunteerCounts.sorted(by: isAscending)
//
//print(volunteerCounts)


//let volunteerSorted = volunteerCounts.sorted(by: {(i: Int, j: Int) -> Bool in
//    return i < j
//})
//
//print(volunteerSorted)

//let volunteerSorted = volunteerCounts.sorted(by: {i, j in i < j})
//
//print(volunteerSorted)

//let volunteerSorted = volunteerCounts.sorted(by: {$0 < $1})
//
//print(volunteerSorted)


//let volunteerSorted = volunteerCounts.sorted {$0 < $1}
//
//print(volunteerSorted)



func doAwsomeWork(on input: String,
                  using transformer: () -> Void,
                  then completion: () -> Void){
    //Here would go the logic to do the awsome work
}

doAwsomeWork(on: "Diplomado"){
    //here goes the transformer
}then: {
    //here goes the completion
}


let volunteerAverage: [Double] = [10.75, 4.2, 1.5, 12.12, 16.816]
doAwsomeWork(on: "Diplomado", using: {}, then: {})

func format(numbers: [Double],
            using formatter:(Double) -> String = {"\($0)"}) ->
[String]{
    var result = [String]()
    
    for number in numbers {
        let transformedNumber = formatter(number)
        result.append(transformedNumber)
    }
    
    return result
}

func rounder(_ number: Double) -> String {
    let roundedNumber: Int = Int(number)
    return "\(roundedNumber)"
}

func addDescription(_ number: Double) -> String{
    return "volunteer average: \(number)"
}

format(numbers: volunteerAverage, using: rounder)

let formatterAverageVolunteers = format(numbers: volunteerAverage, using: rounder)

print(volunteerAverage)
print(formatterAverageVolunteers)

let averageVoluntareesDescription = format(numbers: volunteerAverage, using: addDescription(_:))

print(averageVoluntareesDescription)

let defaultVolunteerFormat = format(numbers: volunteerAverage)
print(defaultVolunteerFormat)
