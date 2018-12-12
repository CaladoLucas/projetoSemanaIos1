//
//  ViewController.swift
//  IosBasico
//
//  Created by aluno on 10/12/18.
//  Copyright © 2018 aluno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contadorLabel: UILabel!
    @IBOutlet var cards: [UIButton]!
    
    var game: MemoryCard!
    
    var emoticons = ["😡","🤔","🤩","🤬","😇","😈","🤮","☠️","💩","😾"]
    var contador = 0 {
        didSet {
            contadorLabel.text = "Flips: \(contador)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = MemoryCard(numberOfPairs: cards.count / 2)
    }

    @IBAction func flipCard(_ sender: UIButton) {
        contador += 1
        let cardIndex = cards.index(of: sender)
        game.chooseCard(at: cardIndex!)
        updateGameBoard()
        //mainFlip(on: sender, withEmoji: emoticons[cardIndex!])
    }
    
    func updateGameBoard(){
        for index in cards.indices{
            let card = game.cards[index]
            if card.isMatched{
                cards[index].setTitle("", for: UIControl.State.normal)
                cards[index].backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
            }else if game.cards[index].isFaceUp {
                cards[index].setTitle(selectEmoticon(for: card.id), for: UIControl.State.normal)
            } else {
                cards[index].setTitle("", for: UIControl.State.normal)
            }
        }
    }
    
    var emoticonX = [Int:String]()
    
    func selectEmoticon(for id: Int) -> String {
        if emoticonX[id] == nil {
            let randomIndex = Int(arc4random_uniform(UInt32(emoticons.count)))
            emoticonX[id] = emoticons.remove(at: randomIndex)
        }
        return emoticonX[id]!
    }
    
}
