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
        let cardsUp = cards.indices.filter({cards[$0].isFaceUp})
        let currentFaceUpIndex = cardsUp.count == 1 ? cardsUp.first : nil
        
        if !cards[index].isMatched{
            if let matchIndex = currentFaceUpIndex {
                if matchIndex != index && cards[index].id == cards[matchIndex].id{
                    cards[index].isMatched = true
                    cards[matchIndex].isMatched = true
                }
            }
            if cards[index].isFaceUp == true {
                cards[index].isFaceUp = false
            }else{
                cards[index].isFaceUp = true
            }
            
        }else{
            for i in cards.indices {
                cards[i].isFaceUp = (i == index)
            }
        }
//        cards[index].isFaceUp = !cards[index].isFaceUp
    }
}
