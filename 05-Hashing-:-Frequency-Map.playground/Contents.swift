import Foundation
/*
 Hashing / Frequency Map
 -----------------------
 
 Concept:
 - Hashing is a technique to map data (keys) to unique indices in a table (hash table).
 - In Swift, Dictionary is a built-in Hash Table implementation.
 - It allows O(1) average time complexity for insert, update, and lookup.
 
 Dictionary / Frequency Map:
 - Dictionary<Key, Value> stores mapping of unique keys to values.
 - A frequency map is simply a dictionary where:
      key   = element from the array
      value = count of occurrences of that element
 
 Why use Hashing over Brute Force?
 - Brute force approach: O(n²) -> for every element, scan the rest of array.
 - Hashing approach: O(n) -> process each element once and update count in dictionary.
 - Best when we deal with large datasets where performance matters.
 
 When to consider Hashing?
 - When you need fast lookups, counting, grouping, or checking existence.
 - Common in problems like: frequency count, two sum, anagrams, subarray sums, etc.
 
 */

// MARK: - Brute Force Approach (O(n²))
func frequencyOfEachNumberBruteForce(arr: [Int]) -> [Int: Int] {
    var freq: [Int: Int] = [:]
    
    for i in 0..<arr.count {
        // Skip if already counted
        if freq[arr[i]] != nil {
            continue
        }
        
        var count = 1
        for j in (i+1)..<arr.count {
            if arr[i] == arr[j] {
                count += 1
            }
        }
        freq[arr[i]] = count
    }
    
    return freq
}

// MARK: - Optimized Approach using Dictionary / Hashing (O(n))
func frequencyOfEachNumberHashing(arr: [Int]) -> [Int: Int] {
    var freq: [Int: Int] = [:]
    
    for num in arr {
        freq[num, default: 0] += 1
    }
    
    return freq
}

// MARK: - Example
let arr = [1, 2, 3, 1, 2, 3, 3]
print("Brute Force:", frequencyOfEachNumberBruteForce(arr: arr))
// Output: [2: 2, 3: 3, 1: 2]

print("Hashing:", frequencyOfEachNumberHashing(arr: arr))
// Output: [1: 2, 2: 2, 3: 3]

/*
 - Hashing is a technique to convert a key (any data type) into an integer index that can be used to store or retrieve data, integer index is called a hash code or hash value.
 - Hash Table is a data structure that uses hashing to store key-value pairs.
 - Collision Handling - When keys can map to the same index
 - Common strategies to handle collision
    - Chaining - store multiple items in the same index.
    - Open Addressing - Find another avaliable index in the table.
 - Dictionary in Swift
    - Built-in hash table.
    - Each key is hashed using the hashValue.
    - Lookup (dictionary[key]), insertion or updateis O(1).
 - Where to use Hashin/Dictionary
    - Counting elements
    - Checking existence quickly
    - Finding duplicates
    - Solving problems like
        - Two sum
        - Longest substring without repeading characters
        - Grouping anagrams
        - Subarray sums
 */
