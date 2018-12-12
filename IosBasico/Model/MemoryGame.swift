//
//  MemoryGame.swift
//  IosBasico
//
//  Created by aluno on 11/12/18.
//  Copyright © 2018 aluno. All rights reserved.
//

import Foundation

class MemoryCard  {
    var cards = [Card]()
    
    init(numberOfPairs: Int) {
        for index in 0..<numberOfPairs{
            let card = Card(id: index)
            cards += [card, card]
        }
        cards.shuffle()
    }
    
    
    func chooseCard(at index: Int){
        cards[index].isFaceUp = !cards[index].isFaceUp
    }
}
