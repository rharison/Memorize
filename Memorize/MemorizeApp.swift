//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Rharison Lucas on 05/09/23.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        let game = EmojiMemoryGame()
        
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
