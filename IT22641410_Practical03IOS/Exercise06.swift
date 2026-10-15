// Exercise06.swift

// 1. Structs & Stored Properties
struct StudentBasic {
    var name: String
    var mark: Int
    var registered: Bool = true
}

let studentBasic = StudentBasic(name: "Amal", mark: 72)
print(studentBasic.name)
print(studentBasic.mark)
print(studentBasic.registered)

// 2. Computed Properties
struct Rectangle {
    var width: Double
    var height: Double

    var area: Double {
        return width * height
    }
}

let rectangle = Rectangle(width: 4, height: 3)
print(rectangle.area) // 12.0

// Computed Grade inside Struct
enum LetterGrade: String {
    case a = "A", b = "B", c = "C", f = "F"
}

struct StudentModel {
    var name: String
    var mark: Int

    var grade: LetterGrade {
        switch mark {
        case 75...100: return .a
        case 65..<75: return .b
        case 50..<65: return .c
        default: return .f
        }
    }

    func displayDetails() {
        print("\(name) received \(mark)")
    }
}

let sSample = StudentModel(name: "Kamal", mark: 75)
sSample.displayDetails()
print(sSample.grade.rawValue)

// 3. Mutating Methods
struct Counter {
    var count = 0

    mutating func increment() {
        count += 1
    }
}

var counter = Counter()
counter.increment()
counter.increment()
print(counter.count) // 2

// 4. Classes & Initializers
class Lecturer {
    var name: String
    var module: String

    init(name: String, module: String) {
        self.name = name
        self.module = module
    }

    func introduce() {
        print("\(name) teaches \(module)")
    }
}

let lecturer = Lecturer(name: "Nushkan", module: "SE4041")
lecturer.introduce()

// 5. Value Types vs Reference Types
// Struct (Value Type) - Copies on assignment
struct Point {
    var x = 0
}
var firstPoint = Point()
var secondPoint = firstPoint
secondPoint.x = 99
print("First Point X: \(firstPoint.x)")     // 0 (Independent)
print("Second Point X: \(secondPoint.x)")   // 99

// Class (Reference Type) - Shares reference
class CounterClass {
    var count = 0
}
let firstCounter = CounterClass()
let secondCounter = firstCounter
secondCounter.count = 99
print("First Counter: \(firstCounter.count)")   // 99 (Shared)
print("Second Counter: \(secondCounter.count)") // 99