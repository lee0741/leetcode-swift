/*:
 [Previous](@previous) | [Next](@next)
 ****
 Copyright (c) 2016 Yancen Li.
 Licensed under MIT License
 
 See Yancen Li - [yancen.org](http://yancen.org) | [@lee0741](https://twitter.com/lee0741)
 ****
 */

/*:
 ## Longest Palindromic Substring
 
Given a string S, find the longest palindromic substring in S. You may assume that the maximum length of S is 1000, and there exists one unique longest palindromic substring.
 */

//Manacher's Algorithm (马拉车算法)
func longestPalindrome(_ s: String) -> String {
    var charactersArr = Array<Character>()
    var resultString = String()
    var maxPoint = 0
    
    charactersArr.append("$")
    for character in s.characters {
        charactersArr.append("#")
        charactersArr.append(character)
    }
    charactersArr.append("#")
    charactersArr.append("%")
    
    var rightMax = 0, middlePoint = 0
    var lenArr = Array.init(repeating: 1, count: charactersArr.count)
    
    for i in 1 ..< 2 * s.characters.count + 2 {
        if rightMax > i {
            lenArr[i] = min(rightMax - i, lenArr[2 * middlePoint - i])
        }
        
        while charactersArr[i - lenArr[i]] == charactersArr[i + lenArr[i]] {
            lenArr[i] += 1
        }
        
        if lenArr[i] + i > rightMax {
            middlePoint = i
            
            rightMax = lenArr[i] + i
        }
        
        if lenArr[i] > lenArr[maxPoint] {
            maxPoint = i
        }
    }
    
    for i in stride(from: maxPoint - (lenArr[maxPoint] - 2), to: maxPoint + (lenArr[maxPoint] - 1), by: 2) {
        resultString.append(charactersArr[i])
    }
    
    return resultString
}

/*:
 ****
 [Previous](@previous) | [Next](@next)
 */
