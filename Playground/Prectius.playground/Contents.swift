import UIKit

var greeting = "Hello, playground"
// type casting
// nil operation
// Swift Strings: Unicode & Scalars
// Indices & Bounds

// Unary
var isValue = true
print("Befor Unary:", isValue)
print("After Unary:", (!isValue))

// Ternary Example
var age = 17

print(age >= 18 ? "You Eligible for voting" : "You are not Eligible for voting")



// Arithmetic Operators
var a = 10, b = 10
print("Addition:", a + b)
print("Subtraction:", a - b)
print("Multiplication", a * b)
print("Divison",a / b)
print("Mod",a % b)

// Assignment Operator
var counter = 10
print("Assignment Operators -> Counter value initaly by 10")
counter += 1
print(counter)
counter -= 1
print(counter)
counter *= 2
print(counter)
counter /= 2
print(counter)

var string1 = "Hello, "
string1 += "there!"
print("Append String: ", string1)


// Logical Operator
let x = 5, y = 2
print("Compare Operator")
print(a == b)
print(a != b)
print(a > b)
print(a < b)
print(a >= 5)

// Logical Operator
var checkValue1 = true
var checkValue2 = false
print("AND (&&): ", checkValue1 && checkValue2)
print("OR (||): ", checkValue1 || checkValue2)
print("Not (!): ", !checkValue1)

let s1 = "Hello"
let s2 = "there"
print(s1 + " " + s2)
print("\(s1), \(s2)!")
let word = "Swift"
print(word.count)
print(s1.isEmpty)

let text = "Hello"
let start = text.startIndex
let end = text.index(start, offsetBy: 3)
let sub = text[start..<end]  // "Swi"
print(sub)
print(text.uppercased())

let first = "Hello"
let second = "there!"
// Concatenation
print(first + " " + second)
// Interpolation
print("\(first),\(second)")


print("Age: ",age)
var StringForAge = "My age " + String(age)
print(StringForAge)


var numbers = [10, 20, 30, 40, 50]
print(numbers[0])
print(numbers.count)
print(numbers.isEmpty)


var items = ["A","B","C"]

items.insert("X", at: 3)
print(items)

items.remove(at: 3)
print(items)

for item in items{
    print(item)
}

for (i, item) in items.enumerated(){
    print("\(i) \(item) ")
}

let fruits = ["Apple", "Banana", "Cherry"]
fruits.forEach { print($0) }
fruits.enumerated().forEach { print("\($0.offset): \($0.element)")
}

var halfNumbers = numbers[0..<3]
print(halfNumbers)

var numbersCopy = numbers[0...4]
print(numbersCopy)

for i in numbers.indices{
    print("index: \(i), value: \(numbers[i])")
}

let lastIndex = numbers.index(before: items.endIndex)
print(lastIndex)


var matrics = [
    [1,2,3],
    [4,5,6],
    [7,8,9]
]

for row in matrics{
    print(row)
}

let scores = [72, 88, 95, 64, 83]

let passed = scores.filter{$0 >= 75}
print(passed)

let curved = passed.map{$0 + 5}
print(curved)

let average = Double(curved.reduce(0, +))/Double(curved.count)

print("Average: \(average)")

/* firstIndex and endIndex(Error: error: MyPlayground.playground:155:18: cannot call value of non-function type 'Int'
*/

let names = ["kai", "Bjorn", "Stale"]
print(names.contains("Bjorn"))
if let i = names.firstIndex(of: "Stale"){
    print(i)
}


var isImage = true
if isImage == true{
    print("It's Image")
}else{
    print("it's not a image")
}


let n = 7

if n % 2 == 0{
    print("even")
}else{
    print("odd")
}

let score = 72
if score >= 90 {
  print("A")
} else if score >= 80 {
  print("B")
} else if score >= 70 {
  print("C")
} else {
  print("Below C")
}

let isLoggedIn = true
let isAdmin = false

if isLoggedIn == true{
    if isAdmin == true{
        print("Admin Pannel")
    }else{
        print("User Dashboard")
    }
}

let command = "start"
switch command {
case "start":
  print("Starting")
case "stop":
  print("Stopping")
default:
  print("Unknown")
}

var num = 3
while num > 0{
    print(num)
    num -= 1
}

var val = 1
repeat {
    print(val)
    val += 1
}while(val <= 10 )

for i in 1...3 {
  print(i)
}

for i in 1...2{
    for j in 1...3{
        print(i, j)
    }
}

var sum = 0
for n in numbers {sum += n}
print(sum)

var arr1: [Any] = [1,2,3,"a", "b", "c"]

enum heterogeneousCollection {
    case number(Int)
    case letters(String)
}

var heterogeneousCollectionArray: [heterogeneousCollection] = [
    .number(1),
    .letters("a"),
    .number(2),
    .letters("b")
    
]

print(heterogeneousCollectionArray)

for items in heterogeneousCollectionArray{
    switch items{
    case .number(let n):
        print("Number:", n)
    case .letters(let ch):
        print("Charater:", ch)
    }
}

print(arr1)

var dic = [
    "ABC" : 1,
    "DEF" : 2,
    "GHI" : 3
]

print(dic)

for element in dic{
    print("KEY:",element.key + "," + "Value:", element.value)
}

//print(Optional(10))


var AgeDic = [
    "abc" : 18,
    "def" : 92,
    "ghi" : 17
]

for element in AgeDic{
    if element.value < 18{
        print(element.key)
    }
}

var studentAge = [
    "John" : 10
]

print(studentAge["John"])

var fruit: Set<String> =  ["Apple", "Banana", "Orange"]

print(fruit)

fruit.insert("Cherry")
print(fruit)

fruit.remove("Cherry")
print(fruit)

if fruit.contains("Apple"){
    print("Yes, Here an apple")
}else{
    print("There no fruit you mention")
}


var number1: Set<Int> = [1,2,4]
var number2: Set<Int> = [3,4,5]

print(number1.union(number2).sorted())
print(number1.intersection(number2).sorted())
print(number1.subtracting(number2).sorted())

let raw = ["1", "x", "2", "3"]
let intNumber = raw.compactMap{Int($0)}
print(intNumber)
let intNumberSum = intNumber.reduce(0, +)
print(intNumberSum)

let name = ["sadf", "sdferg", "gujdfkrgh", "aabc", "aabbc", "aacc"]
let caseInsensitive = name.sorted {$0.lowercased() < $1.lowercased()}

print(caseInsensitive)

func hello(){
    print("Hello")
}

hello()

func sayName(_ name: String) -> String {
    return "Hello \(name)"
}

print(sayName("dgdfb"))

func MultiplyNumber(_ number: inout Int){
    number = number * 2
    print(number)
}

var MultiplyNumber = 5
MultiplyNumber(&MultiplyNumber)
print(MultiplyNumber)

let tuple1 = (10, "abc", "a", 48, 66)
print(tuple1)

print(tuple1.0)
print(tuple1.1)
print(tuple1.2)
print(tuple1.3)
print(tuple1.4)

let tuple2 = (name: "asgdy", age: 3, isStudent: true)
print(tuple2.name, "-", tuple2.0)
print(tuple2.age, "-", tuple2.1)
print(tuple2.isStudent, "-", tuple2.2)


func getValue() -> (name:String, age: Int){
    return ("Bob", 30)
}
let user = getValue()
print(user.name)
print(user.age)

class abc{
    var name = "fg jkb"
    func NameSay(){
        print(name)
    }
}

let ObjOfABC = abc()
ObjOfABC.NameSay()

class Player {
    var score: Int = 0 {
        willSet {
            print("Score will change to \(newValue)")
        }
        didSet {
            print("Score changed from \(oldValue) to \(score)")
        }
    }
}


let p = Player()
p.score = 10

func isValiedUserName(username: String) -> (error: String?, isValied: Bool){
    if username.isEmpty{
        return ("Username is invaild", false)
    }else{
        return (nil, true)
    }
}

let isValiedUserName1 = isValiedUserName(username:"")
print(isValiedUserName1)

let isValiedUserName2 = isValiedUserName(username:"Chais")
print(isValiedUserName2)


func isPasswordValid(password: String) -> (error: String?, isValid: Bool){
    if password.count < 3{
        return ("Your password was to short", false)
    }else if password.count > 20{
        return ("Your password was to long", false)
    }else{
        return (nil, true)
    }
}
print(isPasswordValid(password: "df"))
print(isPasswordValid(password: "dfgvs ghfs hjsfjco h"))
print(isPasswordValid(password: "dfgvs ghfs hjsfjco hf"))


class demo{
    var name = ""
    func say(){
        print("Hello")
    }
}

class sample: demo{
    override func say(){
        super.say()
        print("Hello \(name)")
    }
}

let ObjDemo = sample()
ObjDemo.name = "Chais"
ObjDemo.say()
print("Complate")


protocol printing{
    func printingPaper() -> String
}

struct Printer: printing{
    var PaperSize: String
    func printingPaper() -> String {
        return "Printing Paper with \(PaperSize) Size"
    }
}

let ObjPrint = Printer(PaperSize:"A4")
print(ObjPrint.printingPaper())


func Swap<T>(_ a: inout T, _ b: inout T){
    let temp = a
    a = b
    b  = temp
}

var x1 = 1
var y1 = 2
swap(&x1, &y1)
print("X1:",x1, "Y1:",y1)

struct Box<T>{
    var value: T
}

let IntBox = Box(value: 10)
print(IntBox)

let StringBox = Box(value:"Chais")
print(StringBox)

func min<T: Comparable> (_ a: T, _ b: T) -> T{
    return a < b ? a: b
}

print(min(10, 20))
print(min("xyz","def"))


protocol xyz{
    func display()
}

extension xyz{
    func heroSection(){
        print("Hello Ji, Namaskar ")
    }
}

class xyzExample: xyz{
    func display(){
        print("Namaskar ke uper vala")
    }
}


extension xyz{
    func DashBoradPage(){
        print("Ha ji ham Dashborad Page hai")
    }
}


let Example = xyzExample()
Example.display()
Example.DashBoradPage()
Example.heroSection()


class superClass{
    private func demo(){
        print("I am the private demo")
    }
    
    public func helloPrint(){
        demo()
        print("I am Hello")
    }
}

class subClass: superClass{
    func callMe(){
        print("You called me...")
    }
}

let objSub = subClass()
objSub.helloPrint()


class demo1{
    init(abc: String){
        print("I called init() \(abc)")
    }
    convenience init(){
        print("I am convenience init")
        self.init(abc: "Chais")
    }
}

let Objdemo1 = demo1()
print(Objdemo1)

struct demo2: Equatable{
    var x: Int, y: Int
}

let demoX = demo2(x:10, y:20)
let demoY = demo2(x:10, y:20)
print(demoX == demoY)

