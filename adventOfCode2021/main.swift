//
//  main.swift
//  adventOfCode2021
//
//  Created by Felix Houghton-Larsen on 29.11.21.
//

import Foundation

print("Advent of Code 2021!")


let filename = "dec00"

// resource file setup https://stackoverflow.com/a/57093149/9142902
let currentDirectoryURL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)
let bundleURL = URL(fileURLWithPath: "codingResources.bundle", relativeTo: currentDirectoryURL)
let bundle = Bundle(url: bundleURL)
let txtFileURL = bundle!.url(forResource: filename, withExtension: "txt")!

do {
    // Get the contents
    let contents = try String(contentsOfFile: txtFileURL.path, encoding: .utf8)
    print(contents)
}
catch let error as NSError {
    print("Ooops! Something went wrong: \(error)")
}
