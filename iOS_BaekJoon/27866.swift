//
//  27866.swift
//  iOS_BaekJoon
//
//  Created by 최영우 on 10/16/23.
//

import Foundation
let s : String = readLine()!
let n : Int = Int(readLine()!)!
var arr : [String] = []

for i in s {
    arr.append(String(i))
}
print(arr[n - 1])
