//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Rharison Lucas on 07/09/23.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻", "🎃", "🕷️"]
        
        return MemoryGame(numberOfPairsCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
       
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
