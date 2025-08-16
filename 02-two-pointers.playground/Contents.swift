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
    var left = 0
    var right = arr.count - 1
    
    while left < right {
        let sum = arr[left] + arr[right]
        
        if sum == target {
            return [left, right] // found the pair
        } else if sum < target {
            left += 1 // need a bigger sum, move left pointer
        } else {
            right -= 1 // need a smaller sum, move right pointer
        }
    }
    
    return [] // no pair found
}

// Example
let arr = [1, 2, 3, 4, 6]
let target = 6
print(twoSumSortedArray(arr: arr, target: target)) // [1, 3]
