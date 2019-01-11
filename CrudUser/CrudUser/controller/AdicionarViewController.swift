//
//  AdicionarViewController.swift
//  CrudUser
//
//  Created by aluno on 10/01/19.
//  Copyright © 2019 aluno. All rights reserved.
//

import UIKit

class AdicionarViewController: UIViewController {

    var database = Database.instance()
    
    @IBOutlet weak var edtNome: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func salvar(_ sender: UIButton) {
        database.insert(add: edtNome.text!)
        
    }
    
}
