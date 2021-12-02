//
//  dec2.swift
//  adventOfCode2021
//
//  Created by Felix Houghton-Larsen on 02.12.21.
//

import Foundation

func puzzle2_1() {
    timeAndPrint(title: "December 02") {
        let contents = readPuzzle(id: "2")
        let allLines = contents.split(separator:"\n")
        let x = allLines.filter { $0.contains("forward")}.map { Int($0.split(separator: " ")[1])! }.reduce(0, +)
        let down = allLines.filter { $0.contains("down")}.map { Int($0.split(separator: " ")[1])! }.reduce(0, +)
        let up = allLines.filter { $0.contains("up")}.map { Int($0.split(separator: " ")[1])! }.reduce(0, +)
        
        print(x * (down - up))
    }
}

struct SubmarineState {
    var x = 0
    var depth = 0
    var aim = 0
}

func puzzle2_2() {
    timeAndPrint(title: "December 02") {
        let contents = readPuzzle(id: "2")
        let allLines = contents.split(separator:"\n")
        
        let finalState = allLines.reduce(SubmarineState(), { result, newValue in
            let split = newValue.split(separator: " ")
            let direction = split[0]
            let value = Int(split[1])!
            var state = result
            if (direction == "forward") {
                state.x += value
                state.depth += state.aim * value
            }
            if (direction == "down") {
                state.aim += value
            }
            if (direction == "up") {
                state.aim -= value
            }
            
            return state
        })
        
        print(finalState)
        print(finalState.x * finalState.depth)
    }
}
