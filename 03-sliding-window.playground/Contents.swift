import Foundation
/*
 Two Pointers (Sliding Window)
 -----------------------------
 General Idea:
   Use two variables (pointers) to scan through an array/string
   instead of nested loops. This reduces time complexity
   from O(n^2) to O(n).

 Pointer Movement Styles:
   - Move in the same direction (sliding window)
   - Move towards each other (opposite ends)
   - One fixed, one moving
   - Across two arrays (merge-style)

 Key Advantages:
   - Time efficiency: O(n) instead of O(n^2)
   - Space efficiency: usually in-place

 Problem Example:
   Given an array of integers and a number `k`,
   find the maximum sum of any contiguous subarray of size `k`
   using the two pointers (sliding window) technique.
*/


func maxSumOfSubArrayTwoPointers(arr: [Int], k: Int) -> Int {
    guard arr.count >= k else { return 0 } // not enough elements
    
    var start = 0
    var currentSum = 0
    var maxSum = 0
    
    for end in 0..<arr.count {
        currentSum += arr[end]  // expand window
        
        if end >= k - 1 {
            maxSum = max(maxSum, currentSum)   // check max
            currentSum -= arr[start]           // shrink window
            start += 1
        }
    }
    
    return maxSum
}

// Example
print(maxSumOfSubArrayTwoPointers(arr: [2, 1, 5, 1, 3, 2], k: 3)) // 9

