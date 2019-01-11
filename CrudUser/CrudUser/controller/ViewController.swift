//
//  ViewController.swift
//  CrudUser
//
//  Created by aluno on 10/01/19.
//  Copyright © 2019 aluno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var edtName: UITextField!
    @IBOutlet weak var edtSenha: UITextField!
    
    var perfil = Perfil()
    var userDatabase = UserDatabase.instance()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let inicioView = segue.destination as? InicioViewController{
            if (edtName.text == "admin"){
                inicioView.paramPerfil = "a"
            }else{
                inicioView.paramPerfil = "v"
            }
//            inicioView.paramPerfil = "nenhum"
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "loginToInicio"{
            let teste = perfil.validaLogin(nome: self.edtName.text!, senha: self.edtSenha.text!)
            
            if (teste == "a") || (teste == "v"){
                enois()
                userDatabase.insert(add: teste)
                return true
            }
            return false
        }else{
            return true
        }
    }
    
    func enois(){
        performSegue(withIdentifier: "loginToInicio", sender: self)
    }
    
}

