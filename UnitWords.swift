//
//  UnitWords.swift
//  TagalogApp
//
//  Created by Julianne Rejesus  on 1/12/25.
//

import Foundation

struct UnitWord: Identifiable {
    let id = UUID()
    let text: String
    let audioFilename: String
}

struct UnitVocab {
    static let unit1: [UnitWord] = [
        UnitWord(text: "aso", audioFilename: "dog.mp3"),
        UnitWord(text: "pusa", audioFilename: "cat.mp3"),
        UnitWord(text: "masaya", audioFilename: "happy.mp3"),
        UnitWord(text: "bahay", audioFilename: "house.mp3")
    ]
}
