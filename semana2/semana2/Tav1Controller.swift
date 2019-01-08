//
//  Tav1Controller.swift
//  semana2
//
//  Created by aluno on 07/01/19.
//  Copyright © 2019 eriberto. All rights reserved.
//

import UIKit

class Tav1Controller: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstview = self.tabBarController?.viewControllers![2]
        
        self.tabBarItem.title = "oi"
        self.tabBarItem.badgeValue = "55"
        
        firstview!.tabBarItem.badgeValue = "3"
        
    }
    
}
