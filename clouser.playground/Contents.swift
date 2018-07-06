import UIKit

let testClouserArray = [9,234,645,867,534,867,4523,867,534,1,2,3,4,7,6,5,4,3,2]

func someClouser(array: [Int], f: (Int) -> Bool) -> [Int] {
    
    var filteredArray = [Int]()
    
    for value in array {
        if f(value) {
            filteredArray.append(value)
        }
    }
    return filteredArray
}

someClouser(array: testClouserArray, f: {(a: Int) -> Bool in
    return a % 2 == 0
})

var res =
    someClouser(array: testClouserArray, f: {a in a % 3 == 1})

var res1 =
    someClouser(array: testClouserArray, f: {$0 % 2 == 1})

var res2 =
    someClouser(array: testClouserArray) {$0 % 2 == 1}

//1

func firstTask(clouserForFirstTask: () -> ()) {
    var count = 0
    for a in 1...10 {
        count += 1
        print(a)
    }
    
    print("Count = \(count)")
    clouserForFirstTask()
}

firstTask {
    print("OK")
}

//2.1

func secondTask(array: [Int], func1: (Int, Int) -> Bool) -> [Int] {
    return array.sorted(by: func1)
}
let test = secondTask(array: [1, 3, 5, 2, 7], func1: {$0 > $1})
print(test)

//2.1.1

secondTask(array: [1,4,3,2], func1: {$0 < $1})

//2.2

struct Abcd  {
    let a: Int
    let b: String
    
}

let arrayTest = [Abcd(a: 10, b: "qwerty"), Abcd(a: 20, b: "qazwsx")]
let sortedArray = arrayTest.sorted { (first, second) -> Bool in
    return first.a < second.a
}
print(sortedArray)

//3

func eds(string: String, f: (Character, Character) -> Bool) -> String {
    return "\(string.sorted(by: f))"
}

var stringTest = eds(string: "faaaaabbbbccccddddeeeeheoshjtfpiodp3123123412412,,,,.,.,.,.,.!!!", f: {$0 < $1})

func example( funcNumber: (Int) -> Bool) -> Int {
    return 1
}

example { _ -> Bool in
    return false
}

