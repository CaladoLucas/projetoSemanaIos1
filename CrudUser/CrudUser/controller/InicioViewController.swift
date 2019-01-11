//
//  InicioViewController.swift
//  CrudUser
//
//  Created by aluno on 10/01/19.
//  Copyright © 2019 aluno. All rights reserved.
//

import UIKit

class InicioViewController: UIViewController {
    
    @IBOutlet weak var btnAdicionar: UIButton!
    @IBOutlet weak var btnVisualizar: UIButton!
    @IBOutlet weak var labelPerfil: UILabel!
    var paramPerfil = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        if paramPerfil == "a"{
            labelPerfil.text = "Bem vindo administrador"
            btnAdicionar.isEnabled = true
            
        }else{
            labelPerfil.text = "Bem vindo visualisador"
        }
        
    }
    
}
