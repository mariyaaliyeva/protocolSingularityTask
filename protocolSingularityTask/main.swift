//
//  main.swift
//  protocolSingularityTask
//
//  Created by Rustam Aliyev on 31.10.2023.
//

import Foundation

protocol AdditionProtocol {
    func add()
}

protocol MultiplicationProtocol {
    func multiplication()
}

extension MultiplicationProtocol {
    func sortArray() -> [Int] {
        let a = Calculate.getArray(self as! Calculate)
        return a().sorted()
    }
}

class Calculate: AdditionProtocol, MultiplicationProtocol {
    
    private var array: [Int]
    init(arr: [Int]) {
        self.array = arr
    }
    
    func getArray() -> [Int] {
        return self.array
    }
    
    func add() {
        print(array.reduce(0, +))
    }
    func multiplication() {
        print(array.reduce(1, *))
    }
}


var calculate = Calculate(arr: [10, 20, 30, 60, 5, 8])
calculate.add()
calculate.multiplication()
print(calculate.sortArray())
