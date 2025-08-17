import Foundation

/*
 Prefix Sum / Difference Array
 -----------------------------
 Prefix Sum helps to quickly calculate the sum of elements
 in a subarray [l, r] using precomputed cumulative sums.

 Steps:
 1. Build a prefix sum array.
    prefix[i] = sum of elements from arr[0] to arr[i].
 2. To answer a query (l, r):
    - If l == 0 → result = prefix[r]
    - Else → result = prefix[r] - prefix[l-1]
 
 This reduces range sum queries from O(n) to O(1) time.
*/

func prefixSumQuery(arr: [Int],
                    queries: [(Int, Int)]) -> [Int] {
    var result: [Int] = []
    
    // Step 1: Build the prefix sum array
    var prefixArray = Array(repeating: 0, count: arr.count)
    prefixArray[0] = arr[0]
    for i in 1..<arr.count {
        prefixArray[i] = prefixArray[i-1] + arr[i]
    }
    // Example for arr = [1,2,3,4,5]
    // prefixArray = [1, 3, 6, 10, 15]
    
    // Step 2: Answer each query using prefix sums
    for (l, r) in queries {
        if l == 0 {
            result.append(prefixArray[r])
        } else {
            result.append(prefixArray[r] - prefixArray[l-1])
        }
    }
    
    return result
}

// Example run
print(prefixSumQuery(arr: [1, 2, 3, 4, 5],
                     queries: [(0,2), (1,3), (2,4)]))
// Output: [6, 9, 12]

