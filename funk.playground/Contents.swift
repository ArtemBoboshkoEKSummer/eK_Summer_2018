import UIKit

func empty() -> Int? {
    var example : Int? = 7
    guard var exampleNoOptional = example else {
        return nil
    }
    if exampleNoOptional < 5 {
        exampleNoOptional *= 2
    } else if exampleNoOptional >= 7 {
        exampleNoOptional *= exampleNoOptional
    } else {
        example = nil
    }
    return example
}

if let resultNoOptional = empty() {
    print(resultNoOptional)
} else {
    print(empty())
}
var result = empty()
if result == 49 {
    print ("ok")
}

//1

func first() -> String {
    return "\u{1F463}"
}
let blablabla = "some cool symbol"

print (blablabla + first())

//2

let abcde = ["A", "B", "C", "D", "E"]

func chess(charecter: String, number: Int) -> String {
    for char in 0..<abcde.count {
        if charecter == abcde[char] {
            if (char + 1) % 2 == number % 2 {
                return "black"
            }
        }
    }
    return "white"
}
print(chess(charecter: "D", number: 2))

//3(1)
func sArray(aaa: [String]) -> [String] {
    let g = aaa
    return g.reversed()
}
print(sArray(aaa: ["Q","W","E","R","T"]))

//3(2)

func swapArray(zzz: [String]) -> [String] {
    var swappedArray = [String]()
    
    for element in zzz {
        swappedArray.insert(element, at: 0)
    }
    return swappedArray
}
print(swapArray(zzz: ["a", "q", "x", "c", "f"]))

//4

func workWithString (yourString: String) -> String {
    var myString = ""
    for symbol in yourString {
        myString += "\(symbol)"
        if symbol == "," {
            myString.remove(at: myString.index(before: myString.endIndex))
        }
        if symbol == "a" {
            myString.remove(at: myString.index(before: myString.endIndex))
            myString += "A"
        }
    }
    return myString
}

print(workWithString(yourString: "a A, co,olhda,sAaOK"))
