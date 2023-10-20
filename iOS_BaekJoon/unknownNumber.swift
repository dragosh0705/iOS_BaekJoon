//
//  main.swift
//  iOS_BaekJoon
//
//  Created by 최영우 on 10/2/23.
//

import Foundation
var arr: [Int] = []
var num : Int = 0

for i in 0..<28 {
    num = Int(readLine()!)!
    arr.append(num)
}
for i in 1...30 {
    if arr.contains(i) == false {
        print(i)
    }
}
