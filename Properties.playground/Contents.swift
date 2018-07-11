import UIKit

//1

let currentYear = 2018
let goToSchool = 6
let ageStopStudy = 17

struct People {
    var name: String
    var surname: String
    var dateBorn: DateBorn
    
    struct DateBorn {
        var day: Int
        var month: Int
        var year: Int
        
        var howOld: Int {
            return currentYear - year
        }
        
        var yearStudy: Int {
            if howOld <= goToSchool {
                return 0
            } else if howOld > goToSchool && howOld < ageStopStudy {
                return howOld - goToSchool
            } else if howOld > goToSchool && howOld == ageStopStudy {
                return 11
            } else {
                return 11
            }
        }
        
        var yearStudySwitch: Int {
            
            switch true {
            case howOld <= goToSchool:
                return 0
            case howOld > goToSchool && howOld < ageStopStudy:
                return howOld - goToSchool
            case howOld > goToSchool && howOld == ageStopStudy:
                return 11
            default:
                return 11
            }
        }
    }
}

var studentBob = People(name: "Bob", surname: "Singler", dateBorn: People.DateBorn(day: 13, month: 04, year: 1996))

print(studentBob.dateBorn.howOld)
print(studentBob.dateBorn.yearStudy)
print(studentBob.dateBorn.yearStudySwitch)

//2

struct Section {
    struct Point {
        var x: Double
        var y: Double
    }
    
    var PointA: Point
    var PointB: Point
    
    var midlePoint: Point {
        let middleX = (PointA.x + PointB.x)/2
        let middleY = (PointA.y + PointB.y)/2
        return Point(x: middleX, y: middleY)
    }
    
    var lenght: Double {
        return sqrt(((PointB.x - PointA.x) * (PointB.x - PointA.x)) + ((PointB.y - PointA.y) * (PointB.y - PointA.y)))
    }
}
var something = Section(PointA: Section.Point(x: 2.0, y: 4.0), PointB: Section.Point(x: 6.0, y: 8.0))

print(something.midlePoint)
print("Length for A to B = \(something.lenght)")
