import Foundation

func readInteger() -> Int {
    var retValue : Int
    if let strValue = readLine() {
        retValue = Int(strValue)!
    } else {
        retValue = 0
    }
    return retValue
}

// ODD / EVEN
func chekNumberOddEven(checkNumber : Int) -> Int {
    // return 0 = even, 1 = odd
    return (checkNumber % 2)
}

var checkNumber : Int
let arrNumberType = ["even", "odd"]
print("-------------------------")
print("Check is number odd or even")
print("")
print("Please, enter number")
checkNumber = readInteger()
print("Number is \(arrNumberType[chekNumberOddEven(checkNumber : checkNumber)])")
*/
// DIVIDE BY 3
func checkNumberDivideThree(checkNumber : Int) -> Bool {
    return (checkNumber % 3) == 0
}

var checkNumber2 : Int
print("-------------------------")
print("Check is number divide by 3")
print("")
print("Please, enter number")
checkNumber2 = readInteger()
if checkNumberDivideThree(checkNumber: checkNumber2) {
    print("Yes, number can be divide by 3")
} else {
    print("Sorry, this number can't be divide by 3")
}

// ARRAY 0..99
var arNumber : [Int] = []
let MAX_NUMBER = 100
print("-------------------------")
print("Array's routine")
print("")
for i in 0 ..< MAX_NUMBER {
    arNumber.append(i)
}
print("Array's length is \(arNumber.count)")
print("First elem is \(String(describing: arNumber.first!)), last elem is \(String(describing: arNumber.last!))")

var cnt = 0
while cnt < arNumber.count {
    if (chekNumberOddEven(checkNumber: arNumber[cnt]) == 0) || (!checkNumberDivideThree(checkNumber: arNumber[cnt])) {
        arNumber.remove(at: cnt)
    } else {
        cnt += 1
    }
}

for i in 0 ..< arNumber.count {
    print("\(i) = \(arNumber[i])")
}

// FIBONACCI
func getFibonacci(el1 : Double, el2 : Double) -> Double {
    return (el1 + el2)
}

var arFibonacci : [Double] = []
print("-------------------------")
print("Fibonacci")
print("")
arFibonacci.append(0)
arFibonacci.append(1)
for i in 2 ..< MAX_NUMBER {
    arFibonacci.append(getFibonacci(el1: arFibonacci[i-2], el2: arFibonacci[i-1]))
}

for i in 0 ..< arFibonacci.count {
    print("\(i) = \(arFibonacci[i])")
}

// SIMPLE NUMBER
func getNextSimple(arSimple : [Int]) -> Int {
    var lastSimple = arSimple.last!
    var isSimple : Bool = false
    var cnt : Int
    while (!isSimple) {
        lastSimple += 1
        cnt = 0
        isSimple = true
        while (cnt < arSimple.count) && (isSimple) {
            isSimple = isSimple && (lastSimple % arSimple[cnt] != 0)
            cnt += 1
        }
    }
    return lastSimple
}

var arSimple : [Int] = []
print("-------------------------")
print("Simple array")
print("")
arSimple.append(2)
while arSimple.count < MAX_NUMBER {
    arSimple.append(getNextSimple(arSimple: arSimple))
}

for i in 0 ..< arSimple.count {
    print("\(i) = \(arSimple[i])")
}
