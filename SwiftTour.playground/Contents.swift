// Loops
let individualScores = [21,31,10,88,10,50]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 5
    } else {
        teamScore += 3
    }
}
teamScore

// Optionals
var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalColor: String? = nil
var greeting = "Color is undefined!"
if let name = optionalColor {
    greeting = "Color is \(name)"
}

// ?? operator
let nickName : String? = nil
let fullName: String = "Alimjan Qadir"
let informalGreeting = "Hi \(nickName ?? fullName)"

// Switch statement
let vegetable = "red peeper"
switch vegetable{
case "celery":
    print("Add some raisins and maek ants on a log.")
case "cucumbber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}


let interestingNumber = [
    "prime": [2, 3, 5, 7, 11, 13],
    "fibbonacci": [1, 1, 2, 3, 5, 8],
    "square": [1, 4, 9, 16, 25]
]

var largest = 0
var largestNumberGroup: String? = nil
for (key, numbers) in interestingNumber{
    for number in numbers {
        if number > largest {
            largest =  number
            largestNumberGroup = key
        }
    }
}

print(largest)
print(largestNumberGroup!)

// Ranges with lower bound
var total = 0
for i in 0..<10 {
    total += i
}
print(total)


// Functions and closures
func greet(_ person: String, day: String) ->  String {
    return "Hello \(person), today is \(day)."
}

greet("Alimjan", day: "Monday")


// Tuple
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}
print(calculateStatistics(scores: [31,12,312,11,332,22]).0)

// First calss type, a function that returns a function.
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(integer: Int) -> Int {
        return integer + 1
    }
    
    return addOne
}

let increment = makeIncrementer()
increment(1)

// Function takes a function as an argument
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}


func lessThanFive(number: Int) -> Bool { return number < 5}
hasAnyMatches(list: [2, 99, 0, 1], condition: lessThanFive)
hasAnyMatches(list: [10, 99, 11, 20], condition: lessThanFive)


// Closures
let numbers = [1,2,3,4,5,6,7,7]
numbers.map({ (number: Int)-> Int in
    if number % 2 == 1 {
        return 0
    }
    return number
})


let squares = numbers.map({number in number * number})
print(squares)


// Objects and classes

class Shape {
    var numberOfSide = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSide) sides."
    }
}


// Class initialization
class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name:String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

// Class inheritence
class Square: NamedShape {
    var sideLength: Double
    init(sideLength: Double) {
        self.sideLength = sideLength
        super.init(name: "Sqaure")
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
}

class Object {}



