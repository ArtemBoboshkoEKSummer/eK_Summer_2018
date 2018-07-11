import UIKit

//1
struct DescriptionFile {
    var filePath: String
    var fileName: String
    var typeFile: Bool
    var fileContent: String
    var size: Double
    static var maxSize = 1024.0
    
    var sizeFile: String {
        if size > DescriptionFile.maxSize {
           return "Error size file, now size file = 0.0 mb"
        } else {
            return "Size file is correct and = \(size) mb"
        }
    }
    
    var access: String {
        if typeFile == false {
            return "This file is closed for you!!!"
        } else {
            return "File is open, welcome!\n" + fileContent
        }
    }
    
    var folderPath: String {
        return filePath + "/" + fileName
    }
    
}
     
var someFile1 = DescriptionFile(filePath: "Desktop/SomeFolder1", fileName: "SomeApp1", typeFile: true, fileContent: "SomeContent1", size: 1048.0)
print(someFile1.access)
print(someFile1.folderPath)
print(someFile1.sizeFile)

var someFile2 = DescriptionFile(filePath: "Desktop/SomeFolder2", fileName: "SomeApp2", typeFile: false, fileContent: "SomeContent2", size: 1048.0)
print(someFile2.access)
print(someFile2.folderPath)
print(someFile2.sizeFile)

var someFile3 = DescriptionFile(filePath: "Desktop/SomeFolder3", fileName: "SomeApp3", typeFile: true, fileContent: "SomeContent3", size: 100.0)
print(someFile3.access)
print(someFile3.folderPath)
print(someFile3.sizeFile)

//2

class Color {
    
    enum SomeColors: String {
        case red = "red"
        case green = "green"
        case blue = "blue"
    }
    
    var someArray = [SomeColors.red, SomeColors.green, SomeColors.blue]
    var countColor: Int {
        return someArray.count
    }
}

var abcd = Color()

print(abcd.countColor)

for i in 0..<abcd.someArray.count {
    print(abcd.someArray[i])
}

var shuffled = [String]()

for _ in 0..<abcd.someArray.count {
    let rand = Int(arc4random_uniform(UInt32(abcd.someArray.count)))
    shuffled.append(abcd.someArray[rand].rawValue)
}

print(shuffled)
print(shuffled[0])
print(shuffled[shuffled.count - 1])

//3

class Human {
    var name = ""
    let minName = 2
    var surname = ""
    let minSurname = 2
    var age = 0.0
    let maxAge = 100.0
    let minAge = 0.0
    var height = 0.0
    let minHeight = 45.4
    var weight = 0.0
    let minWeight = 4.4
    
    static var count = 0
    
    init(name: String, surname: String, age: Double, height: Double, weight: Double) {
        self.name = name
        self.surname = surname
        self.age = age
        self.height = height
        self.weight = weight
        Human.count += 1
    }
    
    var testHumanAge: String {
        if age < maxAge && age > minAge {
            return "Test complete age \(name) is correct and =\(age)"
        } else {
            return "Test false"
        }
    }
    
    var testHumanHeight: String {
        if height < minHeight {
            return "Test false"
        } else {
            return "Height is correct and = \(height)"
        }
    }
    
    var testHumanWeight: String {
        if weight < minWeight {
            return "Test false"
        } else {
            return "Weight is correct and = \(weight)"
        }
    }

    var testHumanNameAndSurname: String {
        if Int(name.count) >= minName && Int(surname.count) >= minSurname {
            return "Test complete name \(name) is correct and =\(surname) correct too"
        } else {
            return "Test false"
        }
    }
    
}
var stas = Human(name: "Stas", surname: "Sina", age: 22, height: 190, weight: 115)
var carl = Human(name: "Carl", surname: "Zeits", age: 0.2, height: 40, weight: 4.0)
var cris = Human(name: "Cris", surname: "Cros", age: 18, height: 150, weight: 60)

print(Human.count)
print(stas.testHumanAge)
print(stas.testHumanHeight)
print(stas.testHumanWeight)
print(stas.testHumanNameAndSurname)
