import Foundation

// MARK: - Arrays
var fruits: [String] = ["Apple", "Banana", "Cherry"]
fruits.append("Orange")
fruits += ["Grape", "Mango"]
fruits.remove(at: 1)
print("Fruits: \(fruits)")

let firstFruit = fruits.first ?? "No fruit"
print("First Fruit: \(firstFruit)")

for fruit in fruits {
    print("Fruit: \(fruit)")
}

fruits.forEach { fruit in
    print("Fruit: \(fruit)")
}

var uniqueNumbers: Set<Int> = [1, 2, 3, 4, 5]
uniqueNumbers.insert(6)
uniqueNumbers.remove(2)
print("Unique Numbers: \(uniqueNumbers)")

let oddNumbers: Set<Int> = [1, 3, 5, 7]
let evenNumbers: Set<Int> = [2, 4, 6, 8]
let primeNumbers: Set<Int> = [2, 3, 5, 7]

let unionSet = oddNumbers.union(evenNumbers)
print("Union Set: \(unionSet)")

let intersectionSet = oddNumbers.intersection(primeNumbers)
print("Intersection Set: \(intersectionSet)")

let differenceSet = oddNumbers.subtracting(primeNumbers)
print("Difference Set: \(differenceSet)")

// MARK: - Dictionaries
var studentScores: [String: Int] = ["Alice": 85, "Bob": 90, "Charlie": 78]
studentScores["David"] = 92
studentScores["Alice"] = 88
studentScores.removeValue(forKey: "Charlie")
print("Student Scores: \(studentScores)")

// Iterating over a dictionary
for (name, score) in studentScores {
    print("\(name) scored \(score)")
}

// Default value lookup
let emilyScore = studentScores["Emily", default: 0]
print("Emily's Score: \(emilyScore)")

// MARK: - Advanced Collection Features
let sortedFruits = fruits.sorted()
print("Sorted Fruits: \(sortedFruits)")

let filteredFruits = fruits.filter { $0.count > 5 }
print("Filtered Fruits: \(filteredFruits)")

let mappedScores = studentScores.mapValues { $0 + 5 }
print("Mapped Scores: \(mappedScores)")

let combinedNumbers = uniqueNumbers.union(primeNumbers).sorted()
print("Combined Numbers: \(combinedNumbers)")
