// Exercise04.swift

let marks = [72, 45, 65, 48, 90]

// Filter
let passed = marks.filter { $0 >= 50 }
print(passed) // [72, 65, 90]

// Map
let increasedMarks = marks.map { $0 + 5 }
print(increasedMarks) // [77, 50, 70, 53, 95]

// Reduce
let total = marks.reduce(0) { $0 + $1 }
print(total) // 320

// Activity 5: Prices processing using closures
let prices = [120.0, 250.0, 80.0, 500.0, 150.0]

// 1. Prices greater than 100
let expensivePrices = prices.filter { $0 > 100.0 }
print("Prices > 100: \(expensivePrices)")

// 2. Increase every price by 10
let updatedPrices = prices.map { $0 + 10.0 }
print("Updated Prices (+10): \(updatedPrices)")

// 3. Calculate total of all prices
let totalPrice = prices.reduce(0.0, +)
print("Total Price: \(totalPrice)")