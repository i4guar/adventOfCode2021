//
//  dec1.swift
//  adventOfCode2021
//
//  Created by Felix Houghton-Larsen on 01.12.21.
//

import Foundation

func puzzle1_1() {
    timeAndPrint(title: "December 01") {
        let contents = readPuzzle(id: "1")
        let allLines = contents.split(separator:"\n")
        var prevMeasurement = Int(String(allLines.first!))!
        var increasingMeasurementCount = 0
        for line in allLines.dropFirst() {
            let measurement = Int(line)!
            if measurement > prevMeasurement {
                increasingMeasurementCount += 1
            }
            prevMeasurement = measurement
        }
        print(increasingMeasurementCount)
    }
}

func puzzle1_2() {
    timeAndPrint(title: "December 01") {
        let contents = readPuzzle(id: "1")
        let allMeasurements = contents.split(separator:"\n").map { Int($0)! }
        var prevMeasurement = allMeasurements[0] + allMeasurements[1] + allMeasurements[2]
        var increasingMeasurementCount = 0
        for i in 3 ..< allMeasurements.count {
            let measurement = allMeasurements[i-2] + allMeasurements[i-1] + allMeasurements[i]
            if measurement > prevMeasurement {
                increasingMeasurementCount += 1
            }
            prevMeasurement = measurement
        }
        print(increasingMeasurementCount)
    }
}
