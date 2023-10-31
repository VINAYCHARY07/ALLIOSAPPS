import UIKit

//*******Questions******//
// 1. In which year was the first version of the Swift programming language introduced?
print("The first version of the Swift programming language introduced in the year of 2014.")
print("----------------------")
// End of question 1
// 2. Declare a constant 'pi' of type Double and assign it the value 3.14. Calculate the circumference of a circle with a radius of 7.5 using the formula: circumference = 2 * pi * radius. Print the obtained result.
let pi : Double = 3.14;
var radius : Double = 7.5
var circumference : Double = 2 * pi * radius;
print("circumference = ",circumference)
print("----------------------")
// End of question 2
// 3. Declare a variable with a value of 98.8°F, convert it to Celsius, and round it to two decimal places. Then, print the result in the following format using a single print statement. [Replace the **** with converted celsius value.]
var Fahrenheit : Double = 98.8
var Celsius : Double = (Fahrenheit-32) * 5.0/9.0
var roundvalue = String(format: "%.2f", Celsius)
print("Fahrenheit : \(Fahrenheit)F")
print("Celsius : \(roundvalue) C")
// Fahrenheit: 98.8 F
// Celsius:    **** C
print("----------------------")
// End of question 3
// 4. Write three sentences about yourself using three print statements and display the first two sentences on the first line, and the third sentence on the next line.
print("Hai, i am vinaychary Nangunoori.Currently i am a graduate student in NWMSU")
print("I am from india")
print("----------------------")
// End of question 4
// 5. Display the following using a single print statement.
// "Swift is a powerful and intuitive programming language for iOS, iPadOS, macOS, tvOS, and watchOS.
//   Writing Swift code is interactive and fun, the syntax is concise yet expressive, and Swift includes modern features   developers love.
//   Swift code is safe by design and produces software that runs lightning-fast."
print("""
Swift is a powerful and intuitive programming language for iOS, iPadOS, macOS, tvOS, and watchOS.
Writing Swift code is interactive and fun, the syntax is concise yet expressive, and Swift includes modern features developers love.
Swift code is safe by design and produces software that runs lightning-fast.
""")
print("----------------------")
// End of question 5
// 6. Declare a variable named 'number' and assign it a minimum three-digit integer value. Write code to count the number of digits in the number and print the result. For example, if the number is 987654, the output should be: 'The number 987654 has 6 digits.'

var number : Int = 703262742
var count = String(number).count
print("'The number \(number) has \(count) digits.'")
print("----------------------")
// End of question 6
// 7. Create a variable with value "Welcome to iOS Class". And then print each character separated by ",". Exlcude the spaces.
let inputString = "Welcome to ios Class,,"
var outputString = ""

for character in inputString {
    if character != " " && character != "," {
        outputString += String(character) + ","
    }
}
if outputString.hasSuffix(",") {
    outputString.removeLast()
}
print(outputString)
print("----------------------")
// End of question 7



