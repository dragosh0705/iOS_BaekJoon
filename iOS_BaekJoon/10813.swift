//
//  10813.swift
//  iOS_BaekJoon
//
//  Created by 최영우 on 10/1/23.
//

import Foundation

var Arr : [Int] = []
var ReplacingI : Int = 0
var ReplacingJ : Int = 0
var Solution : String = ""
let inputnm = readLine()?.split(separator: " ").map {
    Int($0)!
}
let N : Int = inputnm![0]
let M : Int = inputnm![1]

for i in 1...N {
    Arr.append(i)
}
for i in 0..<M {
    var inputij = readLine()?.split(separator: " ").map {
        Int($0)!
    }
    var I : Int = inputij![0]
    var J : Int = inputij![1]
    
    Arr.swapAt(I - 1, J - 1)
    
}
for i in Arr {
    Solution += String(i)
    Solution += " "
}
print(Solution)
