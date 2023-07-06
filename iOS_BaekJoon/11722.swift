// 11722
//  main.swift
//  iOS_BaekJoon
//
//  Created by 최영우 on 7/6/23.
//

import Foundation

let n : Int = Int(readLine()!)!
var sum : Int = 0
let arr = readLine()?.split(separator: " ").map{Int(String($0))!}
var dp = Array(repeating: 0, count: 1001)
for i in 0..<n {
    dp[i] = 1
    for j in 0..<n {
        if arr![i] < arr![j] {
            dp[i] = max(dp[i], dp[j] + 1)
        }
    }
    sum = max(sum, dp[i])
}
print(sum)
