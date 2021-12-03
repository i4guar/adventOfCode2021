//
//  main.swift
//  adventOfCode2021
//
//  Created by Felix Houghton-Larsen on 29.11.21.
//

import Foundation



func puzzle3_1() {
    timeAndPrint(title: "December 03") {
        let contents = readPuzzle(id: "3")
        let allLines = contents.split(separator:"\n")
        let x = allLines.reduce([Int:(Int,Int)]()) { partialResult, newValue in
            var copy = partialResult
            newValue.enumerated().forEach { element in
                var pair = partialResult[element.offset] ?? (0,0)
                if element.element == "1" {
                    pair.0 += 1
                } else {
                    pair.1 += 1
                }
                copy[element.offset] = pair
            }
            return copy
        }
        var gammaString = ""
        var epsilonString = ""
        for i in 0..<12 {
            if x[i]!.0 > x[i]!.1 {
                gammaString += "1"
                epsilonString += "0"
            } else {
                gammaString += "0"
                epsilonString += "1"
            }
            
        }
        let gamma = Int(gammaString, radix: 2)!
        let epsilon = Int(epsilonString, radix: 2)!

        print(gamma * epsilon)
    }
}

func puzzle3_2() {
    timeAndPrint(title: "December 03") {
        let contents = readPuzzle(id: "3")
        let allLines = contents.split(separator:"\n").map {String($0)}
        
        var validOxygenValues = allLines
        var validCO2Values = allLines
        var oxygen = "0"
        var CO2 = "0"
        for i in 0..<12 {

            let x1 = validOxygenValues.reduce([Int:(Int,Int)]()) { partialResult, newValue in
                var copy = partialResult
                newValue.enumerated().forEach { element in
                    var pair = partialResult[element.offset] ?? (0,0)
                    if element.element == "1" {
                        pair.0 += 1
                    } else {
                        pair.1 += 1
                    }
                    copy[element.offset] = pair
                }
                return copy
            }
            let x2 = validCO2Values.reduce([Int:(Int,Int)]()) { partialResult, newValue in
                var copy = partialResult
                newValue.enumerated().forEach { element in
                    var pair = partialResult[element.offset] ?? (0,0)
                    if element.element == "1" {
                        pair.0 += 1
                    } else {
                        pair.1 += 1
                    }
                    copy[element.offset] = pair
                }
                return copy
            }
            validOxygenValues = validOxygenValues.filter({ binaryString in
                Array(binaryString)[i] == (x1[i]!.0 >= x1[i]!.1 ? "1" : "0")
            })
            validCO2Values = validCO2Values.filter({ binaryString in
                Array(binaryString)[i] == (x2[i]!.0 >= x2[i]!.1 ? "0" : "1")
            })
            if validOxygenValues.count == 1 {
                oxygen = validOxygenValues.first!
            }
            if validCO2Values.count == 1 {
                CO2 = validCO2Values.first!
            }
        }
        
        
        print(Int(oxygen, radix: 2)! * Int(CO2, radix: 2)!)
    }
}

