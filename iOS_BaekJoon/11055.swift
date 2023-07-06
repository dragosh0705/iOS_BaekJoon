//
//  main.swift
//  iOS_BaekJoon
//
//  Created by 최영우 on 7/6/23.
//

import Foundation

let n: Int = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var dp = Array(repeating: 0, count: 1001)
for i in 0..<n {
    dp[i] = arr[i]
    for j in 0..<n {
        if arr[i] > arr[j] {
            dp[i] = max(dp[j] + arr[i], dp[i])
        }
    }
}
print(dp.max()!)
