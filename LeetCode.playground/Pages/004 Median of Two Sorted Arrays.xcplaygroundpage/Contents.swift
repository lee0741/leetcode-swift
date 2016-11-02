/*:
 [Previous](@previous) | [Next](@next)
 ****
 Copyright (c) 2016 Yancen Li.
 Licensed under MIT License
 
 See Yancen Li - [yancen.org](http://yancen.org) | [@lee0741](https://twitter.com/lee0741)
 ****
 */

/*:
 ## Median of Two Sorted Arrays
 
 There are two sorted arrays nums1 and nums2 of size m and n respectively.
 
 Find the median of the two sorted arrays. The overall run time complexity should be O(log (m+n)).
 
    nums1 = [1, 3]
    nums2 = [2]
 
    The median is 2.0
 
    nums1 = [1, 2]
    nums2 = [3, 4]
 
    The median is (2 + 3)/2 = 2.5
 */

func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    let nums = (nums1 + nums2).sorted()
    if nums.count % 2 == 0 {
        return Double(nums[nums.count/2] + nums[nums.count/2 - 1]) / 2
    } else {
        return Double(nums[(nums.count-1)/2])
    }
}

/*:
 ****
 [Previous](@previous) | [Next](@next)
 */