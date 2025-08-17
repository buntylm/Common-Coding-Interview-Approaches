import Foundation
//  BinarySearch.swift
//
//  Problem: Implement Binary Search in a sorted array
//
//  Concept:
//  Binary Search is an efficient searching algorithm that works only on
//  sorted arrays. Instead of scanning linearly, it divides the search
//  space in half at each step.
//
//  Steps:
//  1. Initialize two pointers: left = 0, right = n - 1
//  2. Find the middle index: mid = left + (right - left) / 2
//     - This avoids integer overflow compared to (left + right) / 2
//  3. Compare arr[mid] with target
//     - If equal → return mid
//     - If greater → move right pointer to mid - 1
//     - If smaller → move left pointer to mid + 1
//  4. Repeat until left > right
//
//  Time Complexity: O(log n)
//  Space Complexity: O(1)
//
//  When to use:
//  - Searching in a sorted array
//  - As a sub-routine for problems like "Binary Search on Answer"
//

func binarySearch(arr: [Int], target: Int) -> Int? {
    var left = 0
    var right = arr.count - 1
    
    while left <= right {
        // ✅ Calculate midpoint safely
        let mid = left + (right - left) / 2
        
        if arr[mid] == target {
            return mid                 // 🎯 Found target
        } else if arr[mid] > target {
            right = mid - 1            // 🔍 Search in left half
        } else {
            left = mid + 1             // 🔍 Search in right half
        }
    }
    
    return nil  // ❌ Target not found
}

// Example
let arr = [1, 3, 5, 7, 9, 11]
print(binarySearch(arr: arr, target: 7) ?? -1)  // Output: 3

