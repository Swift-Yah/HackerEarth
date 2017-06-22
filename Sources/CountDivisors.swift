//
//  CountDivisors.swift
//  HackerEarth
//
//  Created by Rafael Ferreira on 6/22/17.
//

import Foundation

struct CountDivisors {
    let inputs: [Int]
    
    init(arguments: [String]) {
        let arguments = arguments.flatMap({ Int($0) })
        
        inputs = arguments
    }
    
    func countDivisors() -> Int {
        let l = inputs[0]
        let r = inputs[1]
        let k = inputs[2]
        
        return count(divisor: k, from: l, to: r)
    }
    
    static func run() {
        let input = String(data: FileHandle.standardInput.availableData, encoding: .utf8)!.trimmingCharacters(in: .newlines).components(separatedBy: " ")
        
        print(CountDivisors(arguments: input).countDivisors())
    }
    
    private func count(divisor: Int, from: Int, to: Int) -> Int {
        return [Int](from...to).filter({ $0 % divisor == 0 }).count
    }
}
