/*:
 [Previous](@previous) | [Next](@next)
 ****
 Copyright (c) 2016 Yancen Li.
 Licensed under MIT License
 
 See Yancen Li - [yancen.org](http://yancen.org) | [@lee0741](https://twitter.com/lee0741)
 ****
 */

/*:
 ## Longest Substring Without Repeating Characters
 
 Given a string, find the length of the longest substring without repeating characters.
 
 **Examples**:
 
 Given `"abcabcbb"`, the answer is `"abc"`, which the length is 3.
 
 Given `"bbbbb"`, the answer is `"b"`, with the length of 1.
 
 Given `"pwwkew"`, the answer is `"wke"`, with the length of 3. Note that the answer must be a substring, `"pwke"` is a subsequence and not a substring.
 */

func lengthOfLongestSubstring(_ input: String) -> Int {
    guard input.characters.count != 0 else {
        return 0
    }
    
    let inputArray = Array(input.characters)
    var hashMap = [Character: Int]()
    var longest = 0
    var currentIndex = 0
    
    for (i, j) in inputArray.enumerated() {
        if hashMap.index(forKey: j) != nil {
            currentIndex = max(hashMap[j]!, currentIndex)
        }
        
        longest = max(longest, i - currentIndex + 1)
        hashMap[j] = i + 1
    }
    
    return longest
    
}

lengthOfLongestSubstring("abcabcbb")
lengthOfLongestSubstring("bbbbbb")
lengthOfLongestSubstring("pwwkew")
lengthOfLongestSubstring("abacd")

/*:
 ****
 [Previous](@previous) | [Next](@next)
 */
