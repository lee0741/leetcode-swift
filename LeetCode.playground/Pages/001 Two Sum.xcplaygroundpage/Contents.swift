/*:
 [Next](@next)
 ****
 Copyright (c) 2016 Yancen Li.
 Licensed under MIT License
 
 See Yancen Li - [yancen.org](http://yancen.org) | [@lee0741](https://twitter.com/lee0741)
 ****
 */

/*:
 ## Two Sum
 
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 
 You may assume that each input would have exactly one solution.
 
    Given nums = [2, 7, 11, 15], target = 9,
 
    Because nums[0] + nums[1] = 2 + 7 = 9,
    return [0, 1].
 */

// Does nums contains (target - j)
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var resArray = [Int]()
    
    for (i, j) in nums.enumerated() {
        if let index = nums.index(of: target - j) {
            resArray.append(contentsOf: [i, index])
            return resArray
        }
    }
    
    return resArray
}

twoSum([1, 2, 3, 5, 9], 10)

/*:
 ****
 [Next](@next)
 */

