import Foundation

/// Bubble Sort Implementation
/// --------------------------
/// Problem: Sort an array in ascending order using Bubble Sort
///
/// Concept:
/// - Compare adjacent elements and swap if they are in the wrong order.
/// - After each pass, the largest unsorted element "bubbles up" to its correct position.
///
/// Optimizations:
/// - Reduce inner loop by `-i` because last `i` elements are already sorted.
/// - Early exit if no swaps were made in a pass (array is already sorted).
///
/// Time Complexity: O(n^2)
/// Space Complexity: O(1)

func bubbleSort(_ arr: inout [Int]) {
    let arrCount = arr.count
    
    for i in 0..<arrCount {
        var swapped = false  // ✅ reset at start of each pass
        
        for j in 0..<arrCount - 1 - i {
            if arr[j] > arr[j+1] {
                arr.swapAt(j, j+1)
                swapped = true
            }
        }
        
        if !swapped {
            break  // early exit if array already sorted
        }
    }
}

// Example
var arr = [5, 2, 9, 1, 7]
bubbleSort(&arr)
print(arr)  // Output: [1, 2, 5, 7, 9]

