//
//  10811.swift
//  iOS_BaekJoon
//
//  Created by 최영우 on 10/1/23.
//

import Foundation

var Arr : [Int] = []
var Reversing : [Int] = []
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
    for j in I - 1..<J {
        Reversing.append(Arr[j])
    }
    Reversing.reverse()
    Arr.replaceSubrange(I - 1..<J, with: Reversing)
    Reversing.removeAll()
}
for i in Arr {
    Solution += String(i)
    Solution += " "
}
print(Solution)
