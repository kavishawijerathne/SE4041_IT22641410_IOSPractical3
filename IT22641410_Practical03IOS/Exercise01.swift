// Exercise01.swift

// Step 1: Simple Function
func greet() {
    print("Welcome to SE4041")
}
greet()

// Step 2: Function with a Parameter
func greetStudent(name: String) {
    print("Welcome \(name)")
}
greetStudent(name: "Amal")
greetStudent(name: "Nimali")
greetStudent(name: "Ruwan")

// Returning a Value
func grade(for mark: Int) -> String {
    if mark >= 50 {
        return "Pass"
    }
    return "Fail"
}
let result = grade(for: 68)
print(result) // Pass

// Activity 1: calculateAverage function
func calculateAverage(_ n1: Double, _ n2: Double, _ n3: Double) -> Double {
    return (n1 + n2 + n3) / 3.0
}
let avgResult = calculateAverage(75, 82, 68)
print(avgResult) // 75.0

// Argument Labels
func travel(from town: String, to city: String) {
    print("Travelling from \(town) to \(city)")
}
travel(from: "Malabe", to: "Kandy")

// Removing an Argument Label
func double(_ number: Int) -> Int {
    return number * 2
}
print(double(10)) // 20

// Default Parameter Values
func resultMark(_ mark: Int, passMark: Int = 50) -> String {
    if mark >= passMark {
        return "Pass"
    }
    return "Fail"
}
print(resultMark(68))        // Pass
print(resultMark(68, passMark: 75)) // Fail

// Activity 2: finalResult function
func finalResult(mark: Int, passMark: Int = 50) -> String {
    if mark >= passMark {
        return "Pass"
    }
    return "Fail"
}
print(finalResult(mark: 45))
print(finalResult(mark: 75))
print(finalResult(mark: 75, passMark: 80))