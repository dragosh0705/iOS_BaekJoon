//
//  main.swift
//  iOS_BaekJoon
//
//  Created by 최영우 on 10/29/23.
//

import Foundation

var n = Int(readLine()!)!

for i in 0...n {
    for j in 0..<i {
        print("*", terminator: " ")
    }
    print("")
}
