import Foundation

/*
 Brute force approach
 - Try all posssible solutions and pick the best or valid one.
 - Often end up with O(n2) or O(n3)
 - Not optional solution but
    - Easy to get correct
    - Give a reference to compare optimized solution
 
 
 General recipe
 1. Enumerate all possibilities (loops, recursion, combinations)
 2. Check each possibility against the problem's constraints
 3. Track the best or first valid solution.
 */

/*
 Example 1
 Problem: Given an array of integers, find the maximum sum of contiguous subarray.
 */
func maxSum(arr: [Int]) -> Int {
    // Check if the array is empty
    // If yes, return 0 since no subarray exists
    guard arr.count > 0 else {
        return 0
    }
    
    // Initialize maxSum to the smallest possible integer
    // This ensures it works even if all elements are negative
    var maxSum = Int.min
    
    // Loop over all possible starting indices of subarrays
    for start in 0..<arr.count {
        // Loop over all possible ending indices for each start
        for end in start..<arr.count {
            var currentSum = 0
            
            // Calculate the sum of the current subarray from start to end
            for index in start...end {
                currentSum += arr[index]
            }
            
            // Debug print to show which subarray we are evaluating
            print("Subarray from index \(start) to \(end) has sum \(currentSum)")
            
            // Update maxSum if the current subarray sum is larger
            maxSum = max(maxSum, currentSum)
        }
    }
    
    // Return the maximum subarray sum found
    return maxSum
}

// Test example
let nums = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
print("Maximum subarray sum:", maxSum(arr: nums)) // Output: 6

/*
 Example 2
 Problem: Given an array and a target, find two numbers that sum to the target.
 
 twoSumBruteForce([2,7,11,15], 9))
 */

func twoSum(arr: [Int], targetSum: Int) -> [Int] {
    // Return empty array if input is empty
    guard arr.count > 0 else {
        return []
    }
    
    // Loop over all possible first elements
    for i in 0..<arr.count {
        // Loop over all possible second elements after i
        for j in i+1..<arr.count {
            if arr[i] + arr[j] == targetSum {
                return [i, j] // Return the pair of indices
            }
        }
    }
    
    return [] // No pair found
}

// Test example
let nums1 = [2, 7, 11, 15]
let target = 9
print(twoSum(arr: nums1, targetSum: target)) // Output: [0, 1]



/*
 Example 3
 Problem: Given an integer array `arr` and a positive integer `k`
 Find the maximum sum of any contiguous subarray of size `k`.
 */

func maxSumSubarray(arr: [Int], k: Int) -> Int {
    // Edge case: if array is empty, return 0
    guard arr.count > 0 else {
        return 0
    }
    
    // Variable to store the maximum sum found so far
    var maxSum = 0
    
    // Loop over all possible starting indices of subarrays of size k
    // Last valid start index is arr.count - k
    for start in 0...(arr.count - k) {
        
        // Variable to store the sum of the current subarray
        var newSum = 0
        
        // Calculate sum of elements from start to start + k - 1
        for index in start..<(start + k) {
            newSum += arr[index]
        }
        
        // Update maxSum if the current subarray sum is larger
        maxSum = max(maxSum, newSum)
    }
    
    // Return the maximum sum found
    return maxSum
}

// Test example
print(maxSumSubarray(arr: [2, 1, 5, 1, 3, 2], k: 3))

