import UIKit

//1

var dateBd: (day: Int, month: Int, hour: Int, minutes: Int, sec: Int)

dateBd.day = 26
dateBd.month = 4
dateBd.hour = 18
dateBd.minutes = 13
dateBd.sec = 32

let daysToBd = (dateBd.month * 30) + dateBd.day
let hourToBd = (daysToBd * 24) + dateBd.hour
let minutesBd = (hourToBd * 60) + dateBd.minutes
let secondsBd = (minutesBd * 60) + dateBd.sec
print(secondsBd)

2//

switch daysToBd {
case 1...91:
    print("You born in first quarter")
case 92...182:
    print("You born in second quarter")
case 183...273:
    print("You born in third quarter")
case 274...365:
    print("You born in fourth quarter")
default:
    print("Check write date")
}

//3

var a = 1
var b = 2
var c = 3
c -= 1
var d = 4
d += 1
var e = 5
(((+e + d - -c) / b) * a)

//4

let xCoordinates = 2
let yCoordinates = 3

var colorPoint = (xCoordinates + yCoordinates) % 2 == 0 ? "black" : "white"
print("if coordinates = \(xCoordinates), \(yCoordinates) color point = \(colorPoint)")
