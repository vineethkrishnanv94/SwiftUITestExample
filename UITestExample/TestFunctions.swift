//
//  TestFunctions.swift
//  UITestExample
//
//  Created by Vineeth Krishnan V on 14/01/25.
//

import Foundation

func isEven(number: Int) -> Bool {
    return number % 2 == 0
}

func fibonacciRecursive(_ n: Int) -> Int {
    if n <= 0 {
        return 0
    } else if n == 1 {
        return 1
    } else {
        return fibonacciRecursive(n - 1) + fibonacciRecursive(n - 2)
    }
}
