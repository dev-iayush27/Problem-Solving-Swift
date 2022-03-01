import Foundation

// MARK: - Find factors

func factor(n: Int) -> [Int] {
    var factors: [Int] = []
    for number in 1...n {
        if (n % number) == 0 {
            factors.append(number)
        }
    }
    return factors
}
print("Factors are: ", factor(n: 60))


// MARK: - Largest number

func largestNumber(arr: [Int]) -> Int {
    var largestNumber = arr[0]
    for number in arr {
        if number > largestNumber {
            largestNumber = number
        }
    }
    return largestNumber
}
print("Largest number: ", largestNumber(arr: [10, 12, 8, 20, 50, 43, 6]))


// MARK: - Second largest number

func secondLargestNumber(arr: [Int]) -> Int {
    var largestNumber = 0
    var secondLargestNumber = 0
    for number in arr {
        if number > largestNumber {
            secondLargestNumber = largestNumber
            largestNumber = number
        } else if number > secondLargestNumber && number != largestNumber {
            secondLargestNumber = number
        }
    }
    return secondLargestNumber
}
print("Second Largest Number: ", secondLargestNumber(arr: [10, 12, 8, 20, 50, 43, 6]))


// MARK: - Smallest number

func smallestNumber(arr: [Int]) -> Int {
    var smallestNumber = arr[0]
    for number in arr {
        if number < smallestNumber {
            smallestNumber = number
        }
    }
    return smallestNumber
}
print("Smallest number: ", smallestNumber(arr: [10, 12, 8, 20, 50, 43, 6]))
