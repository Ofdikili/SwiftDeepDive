import Foundation

// MARK: Assignment Operator
var x = 8
let y = 15

// MARK: Arithmetic Operators
let addition = 3 + 7
let subtraction = 12 - 6
let multiplication = 4 * 5
let division = 20.0 / 4.0
let modulo = 15 % 6

// MARK: String Concatenation
let message = "Swift " + "Programming!"

// MARK: Comparison Operators
let isSame = (3 == 3)
let isDifferent = (5 != 2)
let isBigger = (10 > 6)
let isSmaller = (7 < 14)
let isBiggerOrEqual = (9 >= 9)
let isSmallerOrEqual = (3 <= 7)

let isLoggedIn = false
let userStatus = isLoggedIn ? "User is logged in" : "User is logged out"

let defaultLanguage = "English"
var selectedLanguage: String?
let currentLanguage = selectedLanguage ?? defaultLanguage

// MARK: Range Operators
for num in 2...6 {
    print("\(num) * 3 = \(num * 3)")
}
for num in 3..<7 {
    print("Current number: \(num)")
}

var blankString = ""
var anotherBlankString = String()

if blankString.isEmpty {
    print("This string is empty!")
}

for letter : Character in "Coding" {
    print(letter)
}

let questionMark: Character = "?"
blankString.append(questionMark)
print(blankString)

let emojiAnimals = "Panda 🐼, Cat 🐱, Dolphin 🐬, Elephant 🐘"
print("emojiAnimals contains \(emojiAnimals.count) characters")

let greetingInSpanish = "Hola Mundo"

greetingInSpanish[greetingInSpanish.startIndex]
greetingInSpanish[greetingInSpanish.index(before: greetingInSpanish.endIndex)]
greetingInSpanish[greetingInSpanish.index(after: greetingInSpanish.startIndex)]
let charIndex = greetingInSpanish.index(greetingInSpanish.startIndex, offsetBy: 5)
greetingInSpanish[charIndex]

let bookChapters = [
    "Chapter 1: Introduction",
    "Chapter 2: Getting Started",
    "Chapter 3: Variables and Constants",
    "Chapter 4: Control Flow",
    "Chapter 5: Functions",
    "Chapter 6: Object-Oriented Programming",
    "Chapter 7: Error Handling",
    "Chapter 8: Swift UI Basics",
    "Chapter 9: Advanced SwiftUI",
    "Chapter 10: Final Project"
]

var chapterCount = 0
for chapter in bookChapters {
    if chapter.hasPrefix("Chapter 1") {
        chapterCount += 1
    }
}
print("There are \(chapterCount) sections in Chapter 1")

var swiftUICount = 0
var projectCount = 0
for chapter in bookChapters {
    if chapter.hasSuffix("SwiftUI") {
        swiftUICount += 1
    } else if chapter.hasSuffix("Project") {
        projectCount += 1
    }
}
print("\(swiftUICount) SwiftUI chapters; \(projectCount) project chapters")
