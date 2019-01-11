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
            if (self.edtName.text == "admin") && (self.edtSenha.text == "12345"){
                enois()
                return true
            }
            if (self.edtName.text == "view") && (self.edtSenha.text == "123"){
                enois()
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

