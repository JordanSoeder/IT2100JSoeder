
var pi: Int = 22/7 //Integer comes back in a whole number
var pi2: Double = 22/7 //Double is like a float just more precise
var pi3: Float = 22/7 //Like an integer just with decimal points


class Counter {
    var count = 0
    func increment() {
        count += 1
    }
    func increment(by amount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
    func decrement() {
        count -= 1
    }
    func decrement(by amount: Int) {
        count -= amount
    }
    func getCount() {
        self.count
    }
    
    func display() {
        print("Count \(self.count)")
    }
    var maxCount = 5;
    if count > maxCount {
    return false
    }
}




func combination(numbers: [Int], starter: String) -> String {
    var combinedNumbers = starter + ": "
    for number in numbers {
        combinedNumbers = combinedNumbers + String(number) + " "
    }
    return combinedNumbers
    
    print(combination([9, 8, 7], starter: <#String#>, starter: "Combined"))
}

