//: [Previous](@previous)

import Foundation

// Hello Welcome to AliGorithm Playground-X
// We wont start with the Simple Stuff and will straight go to Object Classes

// What is object and OOP object oriented programming?
// Object-oriented programming is currently the dominant programming paradigm. At the core of this paradigm is the object class. Objects allow us to encapsulate data and functionality, which can then be stored and passed around.

// Lets create a Person Class

class Person {
    //“Classes are defined with the class keyword”
    let givenName: String
    let middleName: String
    let familyName: String
    var countryOfResidence: String = "USA"
    
    init(givenName: String, middleName: String, familyName: String) {
        self.givenName = givenName
        self.familyName = familyName
        self.middleName = middleName
    }
    
    var displayString: String {
        return "\(returnFullName)"
    }
    
    func returnFullName() -> String {
        return "\(givenName) \(String(describing: middleName)) \(familyName)"
    }
}

final class Friend: Person {
    var whereWeMet: String?
    
    override var displayString: String {
        return "\(super.displayString) - \(whereWeMet ?? "Don't Know Where we met!")"
    }
}

final class Family: Person {
    let relationship: String
    
    init(givenName: String, middleName: String, familyName:  String = "Karimov", relationship: String) {
        self.relationship = relationship
        super.init(givenName: givenName, middleName: middleName, familyName: familyName)
    }
    
    override var displayString: String {
        return"\(super.displayString) - \(relationship)"
    }
}


let steve = Person(givenName: "Steven", middleName: "Paul", familyName: "Jobs")
let dan = Friend(givenName: "Daniel", middleName: "James", familyName: "Woodel")
dan.whereWeMet = "Worked together at BBC News"
let finnley = Family(givenName: "Finnley", middleName: "David", relationship: "Son")
let dave = Family(givenName: "Dave", middleName: "deRidder", familyName: "Jones", relationship: "Father-In-Law")
dave.countryOfResidence = "US"

print(steve.displayString) // Steven Paul Jobs
print(dan.displayString) // Daniel James Woodel - Worked together at BBC News
print(finnley.displayString) // Finnley David Moon - Son

// “Very Important to remember Class objects are reference types that refer to the way they are stored and referenced internally.”



//: [Next](@next)