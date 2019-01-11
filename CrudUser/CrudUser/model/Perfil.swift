//
//  Pessoas.swift
//  CrudUser
//
//  Created by aluno on 10/01/19.
//  Copyright © 2019 aluno. All rights reserved.
//

import Foundation

class Perfil {
    var nomeAdmin = "admin"
    var senhaAdmin = "12345"
    var nomeView = "view"
    var senhaView = "123"
    var perfilLogado = ""
    
    func validaLogin(nome: String, senha:String) -> String {
        if (nome == "admin") && (senha == "12345") || (nome == "view") && (senha == "123"){
            if nome == "admin"{
                perfilLogado = "a"
            }else{
                perfilLogado = "v"
            }
            
        }else{
            perfilLogado = "eca"
        }
        print(perfilLogado)
        print(nome)
        print(senha)
        return perfilLogado
    }
    
}
