import Foundation

//Genericos

//Como lo hemos usado
let someArray: Array<Int> = [Int]()
let someSet: Set<Int> = []

//Stack
//last in - first out
//push y pop

//struct Stack<Element> {
//    var items = [Element]()
//
//    mutating func push(_ newItem: Element){
//        items.append(newItem)
//    }
//
//    mutating func pop() -> Element? {
//        guard !items.isEmpty else {return nil}
//
//        return items.removeLast()
//    }
//}

//var intStack: Stack<Int> = Stack()
//intStack.push(1)
//intStack.push(2)


//print(intStack.pop())
//print(intStack.pop())
//print(intStack.pop())

//var doubleStack: Stack<Double> = Stack()
//doubleStack.push(2.0)


//print(doubleStack.pop())
//print(doubleStack.pop())

//map

//func myMap<T, U>(_ items: [T], _ transformer: (T) -> (U)) -> [U]{
//    var result = [U]()
//    for item in items{
//        let transformedItem = transformer(item)
//        result.append(transformedItem)
//    }
//    return result
//}

//let myStrings = ["one", "two", "three"]
//let stringLengths = myMap(myStrings) {$0.count}
//print(stringLengths)

/// Mappimg in stack

//struct Stack<Element> {
//    var items = [Element]()
//
//    mutating func push(_ newItem: Element){
//        items.append(newItem)
//    }
//
//    mutating func pop() -> Element? {
//        guard !items.isEmpty else {return nil}
//
//        return items.removeLast()
//    }
//    func myMap<U>(_ transformer: (Element) -> (U)) -> Stack<U>{
//        var result = [U]()
//        for item in items{
//            let transformedItem = transformer(item)
//            result.append(transformedItem)
//        }
//        return Stack<U>(items: result)
//    }
//}
//
//var intStack = Stack<Int>()
//intStack.push(1)
//intStack.push(2)
//
//var doubleStack = intStack.myMap{ $0 * 2}
//
//print(intStack.pop())
//print(intStack.pop())
//
//
//func checkIfEqual<T: Equatable>(_ first: T, _ second: T) -> Bool {
//    return first == second
//}
//
//print(checkIfEqual(1, 2))
//
//func checkIfDescriptionMatch<T: CustomStringConvertible, U: CustomStringConvertible>(_ first: T, _ second: U) -> Bool {
//    return first.description == second.description
//}
//
//print(checkIfDescriptionMatch(Float(1), Double(1.0)))


// con protocolos

//protocol IteratorProtocol{
//    associatedtype Element
//    mutating func next() -> Element?
//}
//
//protocol Sequence {
//    associatedtype Iterator: IteratorProtocol
//    associatedtype Element where Element == Iterator.Element
//
//    func makeIterator() -> Iterator
//}

struct Stack<Element>: Sequence {
    //typealias Iterator = StackIterator
    //typealias Element = StackIterator<Element>.Element
    
    var items = [Element]()

    mutating func push(_ newItem: Element){
        items.append(newItem)
    }

    mutating func pop() -> Element? {
        guard !items.isEmpty else {return nil}

        return items.removeLast()
    }
    mutating func pushAll<S: Sequence>(_ sequence: S) where S.Element == Element{
        for item in sequence{
            self.push(item)
        }
    }
    func makeIterator() -> StackIterator<Element> {
        return StackIterator(stack: self)
    }
}
struct StackIterator<T>: IteratorProtocol {
    
    //podemos comentar debido a que el compilador lo puede inferir
    //typealias Element = T
    
    var stack: Stack<T>
    
    mutating func next() -> T? {
        return stack.pop()
    }
}

var myStack = Stack<Int>()
myStack.push(10)
myStack.push(20)
myStack.push(30)

//var myStackIterator = StackIterator(stack: myStack)
//while let value = myStackIterator.next(){
//    print(value)
//}
//
//print(myStack.pop())

let mySet: Array<Int> = [1,2,3,4]
myStack.pushAll(mySet)


for value in myStack{
    print("for in loop: got \(value)")
}

//Where


