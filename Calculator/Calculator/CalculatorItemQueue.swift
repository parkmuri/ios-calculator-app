//
//  CalculatorItemQueue.swift
//  Calculator
//
//  Created by 무리 on 2023/01/24.
//

import Foundation

struct CalculatorItemQueue<T>: CalculatorItem {
    var data: [T?] = []
    var head: Int = 0
    var isEmpty: Bool {
        return data.isEmpty
    }
    var count: Int {
        return data.count - head
    }

    var first: T? {
        guard isEmpty == false else { return nil }
        return data[head]
    }
    
    var last: T? {
        guard isEmpty == false, let element = data.last else { return nil }
        return element
    }
    
    
    mutating func enqueue(_ element: T) {
        data.append(element)
    }
    
    mutating func dequeue() -> T? {
        guard head < data.count, let element = data[head] else { return nil }
        data[head] = nil
        head += 1
        
        return element
    }
    
    mutating func clearAll() {
        data.removeAll()
    }
}
