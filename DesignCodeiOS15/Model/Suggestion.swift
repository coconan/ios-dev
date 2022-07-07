//
//  Suggestion.swift
//  DesignCodeiOS15
//
//  Created by Meng To on 2022-02-16.
//

import SwiftUI

struct Suggestion: Identifiable {
    let id = UUID()
    var text: String
}

var suggestions = [
    Suggestion(text: "SwiftUI"),
    Suggestion(text: "React"),
    Suggestion(text: "Design")
]
