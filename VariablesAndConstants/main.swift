import Foundation

// `let`: Sabitleri tanımlamak için kullanılır. Atandıktan sonra değeri değiştirilemez.
//        Bir sabit başlangıç değeri olmadan tanımlanabilir, ancak ilk kez okunmadan önce bir değer atanmalıdır.
// `var`: Değişkenleri tanımlamak için kullanılır. Değişkenlerin değeri daha sonra değiştirilebilir.

let maxLoginAttempts: Int

var loginCounter = 0

var appMode = "test"

if appMode == "test" {
    maxLoginAttempts = 50
} else {
    maxLoginAttempts = 5
}

// String birleştirme
var givenName: String = "Ömer"
var familyName: String = "Dikili"
var completeName: String = givenName + " " + familyName
print(completeName)
print("Kullanıcı: \(completeName)")

// Aynı satırda birden fazla değişken veya sabit tanımlama
var a = 1.5, b = 20, c: String = "Merhaba"
var redValue, greenValue, blueValue: Double, messageText: String = "Selam"

print(c)
let minValue = Int.min
let maxValue = Int.max

print(minValue)
print(maxValue)

// Farklı sayı sistemlerinden sayılar
let binaryValue: Int = 0b10110
let octalValue: Int = 0o27
let hexValue: Int = 0x1A
print(binaryValue)

let largeNumber = 3_500_000
let slightlyLargerNumber = 3_500_000.000_000_2
print(largeNumber)
print(slightlyLargerNumber)

let wholeNumber = 7
let decimalFraction: Double = 0.732
let sumResult = Double(wholeNumber) + decimalFraction
print(sumResult)
let roundedSum = Int(sumResult)
print(roundedSum)

// Type alias kullanımı
typealias Callback = (Bool, String) -> Void

func fetchInformation(completion: Callback) {
    let success: Bool = true
    let infoMessage: String = "Veri başarıyla alındı"
    completion(success, infoMessage)
}

fetchInformation { success, infoMessage in
    if success {
        print("İşlem Başarılı: \(infoMessage)")
    } else {
        print("İşlem Başarısız: \(infoMessage)")
    }
}

// Tuple kullanımı

var apiError: (code: Int, description: String) = (500, "Internal Server Error")
let (errorCode, errorMsg) = apiError
print(apiError.code)
print(apiError.description)
print(errorCode)
print(errorMsg)

let successResponse = (code: 201, description: "Created")

print("Durum kodu: \(successResponse.0)")
// Prints "Durum kodu: 201"
print("Durum mesajı: \(successResponse.1)")

// Opsiyonel değişkenler
var databaseResponse: String?

print(databaseResponse)

if let response = databaseResponse {
    print("Veritabanı yanıtı boş değil: \(response)")
} else {
    print("Veritabanı yanıtı boş")
}

let numericString = "456b"
let convertedValue = Int(numericString)

if let number = convertedValue {
    print("Dönüştürülen sayı: \(number)")
} else {
    print("Dönüştürülemeyen değer nil")
}

if let parsedNumber = Int(numericString) {
    print("\"\(numericString)\" değeri tam sayı olarak \(parsedNumber)")
} else {
    print("\"\(numericString)\" tam sayıya dönüştürülemedi")
}

if let num1 = Int("8"), let num2 = Int("75"), num1 < num2 && num2 < 150 {
    print("\(num1) < \(num2) < 150")
}

let personName: String? = nil
let salutation = "Merhaba, " + (personName ?? "misafir") + "!"
print(salutation)
