import UIKit

//1

let daysArray = [31,28,31,30,31,30,31,31,30,31,30,31]
for day in daysArray {
    print(day)
}

print()

let reversArray = daysArray.reversed()

reversArray.forEach({
    print($0)
})

var newValue = 0

for countOfDay in daysArray {
    newValue += countOfDay
}
print("Count of days \(newValue)")

var newNumber = 0
for dayssss in 0..<daysArray.count {
    newNumber = newNumber + daysArray[dayssss]
   
}
 print(newNumber)


print()

let monthArray = ["jan","feb","mar","apr","may","jun","jul","aug","sep","oct","nov","dec"]

for monthAndDay in 0..<monthArray.count {
    print("In \(monthArray[monthAndDay]) is \(daysArray[monthAndDay]) days.")
}

print()

let daysInMonth = (["jan","feb","mar","apr","may","jun","jul","aug","sep","oct","nov","dec"],[31,28,31,30,31,30,31,31,30,31,30,31])
var numberOfMonth = 1
