//
//  10988.swift
//  iOS_BaekJoon
//
//  Created by 최영우 on 10/20/23.
//

import Foundation
var s: String = readLine()!
var reversearr: [String] = []
var rs : String = ""
for i in s {
    reversearr.append(String(i))
}
reversearr.reverse()
for i in reversearr {
    rs += i
}
if s == rs {
    print(1)
} else {
    print(0)
}
