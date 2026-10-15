// Exercise03.swift

func summary(of marks: [Int]) -> (minimum: Int, maximum: Int, average: Double) {
    let total = marks.reduce(0, +)
    return (
        marks.min()!,
        marks.max()!,
        Double(total) / Double(marks.count)
    )
}

let sumResult = summary(of: [72, 65, 48, 90])
print(sumResult.minimum) // 48
print(sumResult.maximum) // 90
print(sumResult.average) // 68.75

// Tuple Unpacking
let (low, high, average) = summary(of: [72, 65, 48, 90])
print(low)
print(high)
print(average)

// Activity 4: analyzeMarks function
func analyzeMarks(_ marks: [Int]) -> (total: Int, average: Double) {
    let total = marks.reduce(0, +)
    let avg = marks.isEmpty ? 0.0 : Double(total) / Double(marks.count)
    return (total, avg)
}

let analysis = analyzeMarks([60, 70, 80, 90])
print("Total: \(analysis.total)")
print("Average: \(analysis.average)")