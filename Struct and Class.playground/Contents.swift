import UIKit

//1

struct Student {
    
    var name = ""
    var surname = ""
    var yearBorn = 0
    var gpa = 0
    
}

var student1 = Student(name: "Artem", surname: "Boboshko", yearBorn: 1996, gpa: 5)
var student2 = Student(name: "Bob", surname: "Winchester", yearBorn: 1980, gpa: 3)
var student3 = Student(name: "Cris", surname: "Winchester", yearBorn: 1987, gpa: 4)

var journal = [Student]()

journal.append(student1)
journal.append(student2)
journal.append(student3)

print(journal)

//2

func printStudents(array: [Student]) {
    for i in 0..<array.count {
        print ("Students number \(i+1), is \(array[i].surname) \(array[i].name), born: \(array[i].yearBorn), with gpa = \(array[i].gpa)")
    }
}

printStudents(array: journal)

//3

func journalSorted(array: [Student], f: (Student, Student) -> Bool) -> [Student] {
    return array.sorted(by: f)
}

var sortedJournalGpa = journalSorted(array: journal, f: {$0.gpa > $1.gpa})
print(sortedJournalGpa)

//4

func journalSortedSurname(firstStudent: Student, secondStudent: Student) -> Bool {
    if firstStudent.surname != secondStudent.surname {
        return firstStudent.surname > secondStudent.surname
    } else {
        return firstStudent.name > secondStudent.name
    }
}

var sortedJournalSurname = journalSorted(array: journal, f: journalSortedSurname)
print(sortedJournalSurname)

class StudentClass {
    var name: String
    var surname: String
    var yearBorn: Int
    var gpa: Int
    init (name: String, surname: String, yearBorn: Int, gpa: Int) {
        self.name = name
        self.surname = surname
        self.yearBorn = yearBorn
        self.gpa = gpa
    }
}

var studentClass1 = StudentClass(name: "Artem", surname: "Boboshko", yearBorn: 1996, gpa: 5)
var studentClass2 = StudentClass(name: "Bob", surname: "Winchester", yearBorn: 1980, gpa: 3)
var studentClass3 = StudentClass(name: "Cris", surname: "Winchester", yearBorn: 1987, gpa: 4)

var journalForClass = [StudentClass]()

journalForClass.append(studentClass1)
journalForClass.append(studentClass2)
journalForClass.append(studentClass3)

func printStudents(array: [StudentClass]) {
    for i in 0..<array.count {
        print ("Students number \(i+1), is \(array[i].surname) \(array[i].name), born: \(array[i].yearBorn), with gpa = \(array[i].gpa)")
    }
}

printStudents(array: journalForClass)


