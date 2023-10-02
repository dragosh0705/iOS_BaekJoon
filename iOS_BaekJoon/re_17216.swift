//
//  17216.swift
//  iOS_BaekJoon
//
//  Created by 최영우 on 10/2/23.
//

import Foundation
let N : Int = Int(readLine()!)!
var sum : Int = 0
var dp = Array(repeating: 0, count: 1001)
var Arr = (readLine()?.split(separator: " ").map { Int($0)! })!
for i in stride(from: 1, to: N + 1, by: 1) {
    dp[i] = Arr[i - 1]
    for j in 1...i {
        if Arr[i - 1] < Arr[j - 1] {
            dp[i] = max(dp[i], dp[j] + Arr[i - 1])
            //print(dp)
        }
    }
}
print(dp.max()!)
