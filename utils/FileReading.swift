//
//  FileReading.swift
//  adventOfCode2021
//
//  Created by Felix Houghton-Larsen on 30.11.21.
//

import Foundation


func readPuzzle(number: Int) -> String {
    let filename = "dec\(number)"

    // resource file setup https://stackoverflow.com/a/57093149/9142902
    let currentDirectoryURL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)
    let bundleURL = URL(fileURLWithPath: "codingResources.bundle", relativeTo: currentDirectoryURL)
    let bundle = Bundle(url: bundleURL)
    let txtFileURL = bundle!.url(forResource: filename, withExtension: "txt")!

    let contents = try! String(contentsOfFile: txtFileURL.path, encoding: .utf8)
    return contents
}
