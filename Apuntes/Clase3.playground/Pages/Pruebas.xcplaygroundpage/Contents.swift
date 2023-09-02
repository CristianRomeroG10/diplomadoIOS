//Prefas rapidar
//FIRST
//Fast, Isolated, Repeatable, Set validating, Test

import XCTest

class MyTests: XCTestCase {
    
    func getFullName(_ nameTuple:(String, String?, String, String?)) -> String{
        
        if (nameTuple.1 == nil) && (nameTuple.3 == nil) {
            return nameTuple.0 + " " + nameTuple.2
        }else {
            return nameTuple.0 + " " + (nameTuple.1 ?? "") + " " + nameTuple.2 + " " + (nameTuple.3 ?? "")
        }
    }
    
    //no oparametros, no regresar datos
    func test_GetFullName(){
        //given
        let firstPerson: (String, String?, String, String?) = (first: "Cristian", second: "Guillermo", firstLastname: "Romero", secondLastName: "Garcia")
        let secondPerson: (String, String?, String, String?) = (first: "Fernando", second: nil, firstLastname: "Gutierrez", secondLastName: nil)
        
        //when
        //Proceso
        
        let firstFullName = getFullName(firstPerson)
        let secondFullName = getFullName(secondPerson)
        
        //then
        XCTAssertEqual(firstFullName,"Cristian Guillermo Romero Garcia")
        XCTAssertEqual(secondFullName,"Fernando ›Gutierrez")
    }
}

MyTests.defaultTestSuite.run()
