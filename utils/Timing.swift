//
//  TimingUtils.swift
//  adventOfCode2021
//
//  Created by Felix Houghton-Larsen on 30.11.21.
//

import Foundation

func timeAndPrint(title: String, operation: () -> ()) {
    let startTime = CFAbsoluteTimeGetCurrent()
    operation()
    let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime
    print("Time elapsed for \(title): \(timeElapsed) s.")
}
