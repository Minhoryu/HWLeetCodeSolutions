//: ## Number Complement
//: [Problem link](https://leetcode.com/problems/number-complement/description/)
/*
 Given a positive integer, output its complement number. The complement strategy is to flip the bits of its binary representation.
 
 Note:
 1. The given integer is guaranteed to fit within the range of a 32-bit signed integer.
 2. You could assume no leading zero bit in the integer’s binary representation.
 
 Example 1:
 Input: 5
 Output: 2
 Explanation: The binary representation of 5 is 101 (no leading zero bits), and its complement is 010. So you need to output 2.
 
 Example 2:
 Input: 1
 Output: 0
 Explanation: The binary representation of 1 is 1 (no leading zero bits), and its complement is 0. So you need to output 0.
 */

import Foundation

class Solution {
    func findComplement(_ num: Int) -> Int {
        let str = String(num, radix: 2)
        let count = str.count
        var sum: Double = 0.0
        for i in 0 ..< count {
            sum += pow(2, Double(i)) // pow是Foundation框架里的 2^i -> 制造 1111
        }
        print(String(Int(sum), radix: 2))
        return num ^ Int(sum) // 取异或
    }
}

Solution().findComplement(9)


//: [Previous](@previous) | [Next](@next)
