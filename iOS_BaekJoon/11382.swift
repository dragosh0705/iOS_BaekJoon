//
//  11382.swift
//  iOS_BaekJoon
//
//  Created by 최영우 on 7/11/23.
//

import Foundation

var sum : Int = 0
let nums = readLine()?.split(separator: " ").map {
    Int($0)!
}
for i in nums! {
    sum = sum + i
}
print(sum)
