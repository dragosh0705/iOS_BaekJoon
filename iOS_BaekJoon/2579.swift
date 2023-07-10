//
//  main.swift
//  iOS_BaekJoon
//
//  Created by 최영우 on 7/6/23.
//

import Foundation

func main () -> Int {
    var t: Int = Int(readLine()!)!
    var arr :[Int] = []
    var dp : [Int] = [Int](repeating: 0, count: t)
    var n : Int = 0
    
    for i in 0..<t {
        n = Int(readLine()!)!
        arr.append(n)
    }
    
    if t == 1 {
        return arr[0]
    } else if t == 2{
        return arr[0] + arr[1]
    } else if t == 3{
        return max(arr[0] + arr[2], arr[1] + arr[2])
    } else {
        dp[0] = arr[0]
        dp[1] = max(arr[0] + arr[1], arr[1])
        dp[2] = max(arr[0] + arr[2], arr[1] + arr[2])
        
        for i in 3..<arr.count {
            dp[i] = max(arr[i] + dp[i - 2], arr[i] + arr[i - 1] + dp[i - 3])
        }
        return dp[dp.count - 1]
    }
}

print(main())
