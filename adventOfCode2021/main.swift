//
//  main.swift
//  adventOfCode2021
//
//  Created by Felix Houghton-Larsen on 29.11.21.
//

import Foundation

timeAndPrint(title: "December 01") {
    let contents = readPuzzle(number: 0)
    for line in contents.split(separator:"\n") {
        print(line)
    }
}
