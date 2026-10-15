// FinalChallenge.swift

// Part A – Create a Grade Enum
enum Grade: String {
    case a = "A"
    case aMinus = "A-"
    case plusB = "B+"
    case b = "B"
    case minusB = "B-"
    case plusC = "C+"
    case c = "C"
    case minusC = "C-"
    case f = "F"
}

// Part B – Create a Student Struct
struct Student {
    var studentID: String
    var name: String
    var mark: Int

    // Part C – Add a Computed Grade Property
    var grade: Grade {
        switch mark {
        case 80...100:
            return .a
        case 75..<80:
            return .aMinus
        case 70..<75:
            return .plusB
        case 65..<70:
            return .b
        case 60..<65:
            return .minusB
        case 55..<60:
            return .plusC
        case 45..<55:
            return .c
        case 40..<45:
            return .minusC
        default:
            return .f
        }
    }

    // Part D – Add a Method
    func displayDetails() {
        print("ID: \(studentID)")
        print("Name: \(name)")
        print("Mark: \(mark)")
        print("Grade: \(grade.rawValue)\n")
    }
}

// Part E – Create Students
let students = [
    Student(studentID: "IT001", name: "Amal", mark: 72),
    Student(studentID: "IT002", name: "Nimali", mark: 45),
    Student(studentID: "IT003", name: "Ruwan", mark: 68),
    Student(studentID: "IT004", name: "Sanduni", mark: 90),
    Student(studentID: "IT005", name: "Kasun", mark: 38)
]

print("--- All Student Details ---")
// Part F – Display Students
for student in students {
    student.displayDetails()
}

print("--- Passed Students (mark >= 50) ---")
// Part G – Use filter
let passedStudents = students.filter { $0.mark >= 50 }
for student in passedStudents {
    print("\(student.name) passed with \(student.mark) marks")
}

print("\n--- Student Names (Mapped) ---")
// Part H – Use map
let studentNames = students.map { $0.name }
print(studentNames)

print("\n--- Class Statistics (Reduce) ---")
// Part I – Use reduce for total marks and average calculation
let totalMarks = students.reduce(0) { $0 + $1.mark }
let classAverage = Double(totalMarks) / Double(students.count)
print("Total Marks: \(totalMarks)")
print(String(format: "Class Average: %.1f", classAverage)) // Expected Output: Class Average: 62.6