import Foundation

//Protocolos
//Ayudan a encapsular codigo y nos permite definir un conjunto de propiedades y metodos que queremos que un tipo tenga.
protocol TabularDataSource: CustomStringConvertible {
    var numberOfRows: Int {get}
    var numberOfColumns: Int {get}
    
    func label(forColumn column: Int) -> String
    func itemFor(row: Int, column: Int) -> String
}


func printTable(_ dataSource: TabularDataSource){
    
    var headerRow = "|"
    
    var columnWidths = [Int]()
    
    //for columnLabel in columnLabels {
    for index in 0..<dataSource.numberOfColumns{
        let columnLabel = dataSource.label(forColumn: index)
        let columnHeader = "\(columnLabel) |"
        headerRow += columnHeader
        columnWidths.append(columnLabel.count)
    }
    print(headerRow)
    //for row in data{
    for index in 0..<dataSource.numberOfRows{
        //Start output string
        var output = "|"
        //row = ["name","age","age of experience"]
        //enumerated regresa indice y el elemento
        //for (index, item) in row.enumerated(){
        for columnIndex in 0..<dataSource.numberOfColumns{
            let item = dataSource.itemFor(row: index, column: columnIndex)
            let paddingNeeded = columnWidths[columnIndex]  - item.count
            let padding = repeatElement(" ", count: paddingNeeded).joined(separator: "")
            output += "\(padding)\(item) |"
        }
        
        print(output)
    }
}




struct Person{
    let name: String
    let age: Int
    let yearsOfExperience: Int
}

//CustomStringConvertible

struct Departament: TabularDataSource /*CustomStringConvertible*/{
    

    let name: String
    var people = [Person]()
    
    var description: String{
        return "Department: \(name)"
    }
    
    init(name: String){
        self.name = name
    }
    mutating func add(_ person: Person){
        people.append(person)
    }
    var numberOfRows: Int{ people.count }
    
    var numberOfColumns: Int { 3 }
    
    func label(forColumn column: Int) -> String {
        
        let columnHeader : String
        switch column{
        case 0: columnHeader = "Employed Name"
        case 1: columnHeader = "Age"
        case 2: columnHeader = "Years of experience"
        default: fatalError("Invalid column header index!")
        }
        return columnHeader
    }
    
    func itemFor(row: Int, column: Int) -> String {
        let person = people[row]
        
        switch column{
        case 0: return person.name
        case 1: return String(person.age)
        case 2: return String(person.yearsOfExperience)
        default: fatalError("Invalid column for person")
        }
    }
}

var department = Departament(name: "Engineering")

department.add(Person(name: "Eva", age: 30, yearsOfExperience: 8))
department.add(Person(name: "Saleh", age: 40, yearsOfExperience: 18))
department.add(Person(name: "Amit", age: 50, yearsOfExperience: 20))

printTable(department)

print(department)


//let operartionDataSource: TabularDataSource = Departament(name: "Pther department")
//let engineeringDataSource = department as TabularDataSource
//
//let testPerson = Person(name: "Cristian", age: 27, yearsOfExperience: 5)
//department is TabularDataSource
