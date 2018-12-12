//
//  Card.swift
//  IosBasico
//
//  Created by aluno on 11/12/18.
//  Copyright © 2018 aluno. All rights reserved.
//

import Foundation

struct Card {
    var id: Int
    var isFaceUp = false
    var isMatched = false
    
    init(id identifier: Int) {
        id = identifier
    }
}
