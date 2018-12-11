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
    
    var emoticons = ["😡","😡","🤔","🤔"]
    var contador = 0 {
        didSet {
            contadorLabel.text = "Flips: \(contador)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func flipCard(_ sender: UIButton) {
        let cardIndex = cards.index(of: sender)
        mainFlip(on: sender, withEmoji: emoticons[cardIndex!])
    }
    
    func mainFlip(on btn: UIButton, withEmoji emoji: String){
        contador += 1
        if btn.currentTitle == emoji {
            btn.setTitle("", for: UIControl.State.normal)
        } else {
            btn.setTitle(emoji, for: UIControl.State.normal)
        }
    }
}
