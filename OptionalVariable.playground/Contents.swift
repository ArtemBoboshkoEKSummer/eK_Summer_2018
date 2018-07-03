//FIRST DAY TASKS
import UIKit
import Darwin
var optionalNumber: Int?

//optionalNumber = 2
//optionalNumber = nil

if optionalNumber == nil{ optionalNumber = 3
    let i = pow(Decimal(optionalNumber!), optionalNumber!)
    print("optionalNumber = \(i)")
    
} else {
    let i = pow(Decimal(optionalNumber!), optionalNumber!)
    print("optionalNumber = \(i)") }

//1

optionalNumber!

//2

if optionalNumber != nil {
    optionalNumber
}

//3

func guardlet() {
    guard let guardletex = optionalNumber else{
        print ("nil")
        return
    }
    print("guardletex, \(guardletex)")
}

//4

if let opNumber = optionalNumber {
    print("opNumber, \(opNumber)")
} else {
    print("nil")
}
var optionalString: String?
if optionalString == nil{
    print("optionalString, \(optionalString!)")
    optionalString = "Boboshko A.V."
    print(optionalString!)
} else {
    print("optionalString is no empty, \(optionalString!)")
}
var optionalBool: Bool? = false
if optionalBool != nil{ optionalBool = true
    print(optionalBool!)
}

//HOME WORK

//1

let a = "1"
let b = "2"
let c = "3"
let d = "4"
var e = "5asd"
var check = Int(e)
if check == nil{
    e = "0"
}
print(e)

func abcde() {
    guard let a1 = Int(a) else{
        print ("nil")
        return
    }
    print("a1, \(a1)")
    guard let b1 = Int(b) else{
        print ("nil")
        return
    }
    print("b1, \(b1)")
    guard let c1 = Int(c) else{
        print ("nil")
        return
    }
    print("c1, \(c1)")
    guard let d1 = Int(d) else{
        print ("nil")
        return
    }
    print("d1, \(d1)")
    guard let e1 = Int(e) else{
        print ("nil")
        return
    }
    print("e1, \(e1)")
    
    let summ = a1 + b1 + c1 + d1 + e1
    print(summ)
}
abcde()

//2

var response: (statusCode: Int, message: String?, errorMessage: String?)
response.statusCode = 250
response.message = "Go"
response.errorMessage = nil
if response.statusCode >= 200 && response.statusCode < 300 {
    if response.message != nil {
        print(response.message!)
    } else {
        print ("message is nil")
    }
} else {
if response.errorMessage != nil {
    print(response.errorMessage!)
} else {
    print("error massage is nil")
    }
}

var response2: (message: String?, errorMessage: String?)
response2.message = "Stop"
response2.errorMessage = nil
if response2.message != nil {
    print(response2.message!)
} else {
    print ("message is nil")
    if response2.errorMessage != nil {
        print(response2.errorMessage!)
    } else {
        print("error massage is nil")
    }
}

//3

var students1: (name: String, number: String?, exams: Int?)
var students2: (name: String, number: String?, exams: Int?)
var students3: (name: String, number: String?, exams: Int?)
var students4: (name: String, number: String?, exams: Int?)

students1.name = "Artem"
students1.number = "312412"
students1.exams = 5

students2.name = "Oleg"
students2.number = "24324"
students2.exams = nil

students3.name = "Dima"
students3.number = nil
students3.exams = 4

students4.name = "Boris"
students4.number = nil
students4.exams = nil

var infoStudents1 = "\nMy name: \(students1.name)."
if students1.number != nil{
    infoStudents1 += "\nI have car with number: \(students1.number!)."
}
if students1.exams != nil{
    infoStudents1 += "\nMy result in exams: \(students1.exams!)."
}
print(infoStudents1)

var infoStudents2 = "\nMy name: \(students2.name)."
if students2.number != nil{
    infoStudents2 += "\nI have car with number: \(students2.number!)."
}
if students2.exams != nil{ infoStudents2 += "\nMy result in exams: \(students2.exams!)."
}
print(infoStudents2)

var infoStudents3 = "\nMy name: \(students3.name)."
if students3.number != nil{
    infoStudents3 += "\nI have car with number: \(students3.number!)."
}
if students3.exams != nil{
    infoStudents3 += "\nMy result in exams: \(students3.exams!)."
}
print(infoStudents3)

var infoStudents4 = "\nMy name: \(students4.name)."
if students4.number != nil{
    infoStudents4 += "\nI have car with number: \(students4.number!)."
}
if students4.exams != nil{
    infoStudents4 += "\nMy result in exams: \(students4.exams!)."
}
print(infoStudents4)

