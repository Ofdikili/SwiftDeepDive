import Foundation

func checkNumber(_ number: Int) {
    if number > 0 {
        print("\(number) is a positive number.")
    } else if number < 0 {
        print("\(number) is a negative number.")
    } else {
        print("\(number) is zero.")
    }
}

checkNumber(10)
checkNumber(-5)

func categorizeDay(_ day: String) {
    switch day {
    case "Monday", "Tuesday", "Wednesday", "Thursday", "Friday":
        print("\(day) is a weekday.")
    case "Saturday", "Sunday":
        print("\(day) is a weekend.")
    default:
        print("\(day) is not a valid day.")
    }
}

categorizeDay("Monday")
categorizeDay("Saturday")
categorizeDay("Holiday")


func printMultiplicationTable(for number: Int) {
    print("Multiplication table of \(number):")
    for multiplier in 1...10 {
        print("\(number) x \(multiplier) = \(number * multiplier)")
    }
}

printMultiplicationTable(for: 5)

func countdown(from number: Int) {
    var count = number
    while count > 0 {
        print("\(count)...")
        count -= 1
    }
    print("Start!")
}

countdown(from: 5)

func repeatCountdown(from number: Int) {
    var count = number
    repeat {
        print("\(count)...")
        count -= 1
    } while count > 0
    print("Start!")
}

repeatCountdown(from: 3)

func greet(person: String) -> String {
    return "Hello, \(person)!"
}

let greeting = greet(person: "Alice")
print(greeting)

func greet(person: String, from hometown: String) -> String {
    return "Hello, \(person)! I heard you are from \(hometown)."
}

print(greet(person: "John", from: "New York"))

func greet(person: String, on day: String = "today") -> String {
    return "Hello, \(person)! How are you on \(day)?"
}

// Example usage
print(greet(person: "Sarah", on: "Monday"))
print(greet(person: "Michael"))
