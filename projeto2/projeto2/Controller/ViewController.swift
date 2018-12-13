//
//  ViewController.swift
//  projeto2
//
//  Created by aluno on 12/12/18.
//  Copyright © 2018 aluno. All rights reserved.
//

import UIKit

class ViewController: VCLLoggingViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let secondView = segue.destination as? SecondViewController{
            secondView.enois = "uhuhuuh"
        }
    }

    @IBAction func antes(_ sender: UIButton) {
        let alertController = UIAlertController(title: "öxente", message: "minini", preferredStyle: .alert)
        alertController.addAction(UIAlertAction( title: "oxe", style: .default))
        alertController.addAction(UIAlertAction( title: "xesque", style: .destructive, handler: enois))
        
        self.present(alertController, animated: true)
    }
    
    func enois(alert: UIAlertAction){
        performSegue(withIdentifier: "firstSegue", sender: self)
    }
    
}

