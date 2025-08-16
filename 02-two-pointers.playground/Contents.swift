import Foundation

/*
 Two Pointers (Converging / Opposite Ends)
 ----------------------------------------
 General Idea:
   Use two pointers starting from opposite ends of a sorted array
   to find a target pair or satisfy a condition without nested loops.

 Pointer Movement:
   - Left pointer starts at index 0
   - Right pointer starts at index n-1
   - Move pointers toward each other based on the condition (sum < target → move left, sum > target → move right)

 Key Advantages:
   - Time efficiency: O(n) instead of O(n^2)
   - Space efficiency: O(1), in-place solution

 Problem Example:
   Given a sorted array of integers and a target sum, find two indices
   whose elements sum to the target.
*/

func twoSumSortedArray(arr: [Int], target: Int) -> [Int] {
    return []
}

// Example
let arr = [1, 2, 3, 4, 6]
let target = 6
print(twoSumSortedArray(arr: arr, target: target)) // [1, 3]

