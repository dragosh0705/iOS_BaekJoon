//
//  17216.swift
//  iOS_BaekJoon
//
//  Created by 최영우 on 10/2/23.
//

import Foundation

let N : Int = Int(readLine()!)!
var Bigger : [Int] = []
var forDelet: [Int] = []
var solution : [Int] = []
var sum : Int = 0
var Arr = (readLine()?.split(separator: " ").map { Int($0)! })!
for i in 1..<Arr.count - 1 {
    if max(Arr[i - 1], Arr[i]) != max(Arr[i], Arr[i + 1])  {
        Bigger.append(max(Arr[i - 1], Arr[i]))
        //Bigger.append(max(Arr[i], Arr[i + 1]))
    }
}
if Arr[Arr.count - 2] > Arr[Arr.count - 1] {
    Bigger.append(Arr[Arr.count - 2])
    Bigger.append(Arr[Arr.count - 1])
}
else if Arr[Arr.count - 2] < Arr[Arr.count - 1]{
    Bigger.append(Arr[Arr.count - 2])
}
else {
    Bigger.append(Arr[Arr.count - 2])
}
print(Bigger)

for i in 1..<Bigger.count - 1 {
    //print(i)
    if Bigger[i - 1] > Bigger[i] {
        solution.append(Bigger[i - 1])
    }
}
print(solution)
if Bigger[Bigger.count - 2] > Bigger[Bigger.count - 1] {
    solution.append(Bigger[Bigger.count - 2])
    solution.append(Bigger[Bigger.count - 1])
    //print(solution)
}
else if Bigger[Bigger.count - 2] < Bigger[Bigger.count - 1]{
    solution.append(Bigger[Bigger.count - 2])
}

else {
    solution.append(Bigger[Bigger.count - 2])
}
print(solution)

for i in solution {
    sum += i
}
print(sum)
