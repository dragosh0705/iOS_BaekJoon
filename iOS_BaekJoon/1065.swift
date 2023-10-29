//
//  1065.swift
//  iOS_BaekJoon
//
//  Created by 최영우 on 10/21/23.
//

import Foundation

let n : Int = Int(readLine()!)!
var arr: [String] = []
var cnt : Int = 0
var ariseq : Int = 0
var differ : Int = 0

for i in 1...n {
    if i < 10 {
        cnt += 1
    }
    else {
        for j in String(i) {
            arr.append(String(j))
        }
        differ = Int(arr[0])! - Int(arr[1])!
        for j in 1..<arr.count {
            if Int(arr[j - 1])! - Int(arr[j])! == differ {
                ariseq += 1
            }
        }
        if ariseq == arr.count - 1 {
            cnt += 1
        }
        ariseq = 0
        arr.removeAll()
    }
}
print(cnt)
