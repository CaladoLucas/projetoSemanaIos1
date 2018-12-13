//
//  SecondViewController.swift
//  projeto2
//
//  Created by aluno on 12/12/18.
//  Copyright © 2018 aluno. All rights reserved.
//

import UIKit

class SecondViewController: VCLLoggingViewController {
    
    var enois = ""

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = enois
    }
}
