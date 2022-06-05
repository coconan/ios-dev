//
//  MemorizeApp.swift
//  Memorize
//
//  Created by brian.yang on 2022/6/5.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
