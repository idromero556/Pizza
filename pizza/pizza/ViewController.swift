//
//  ViewController.swift
//  pizza
//
//  Created by Dayana Romero on 8/5/19.
//  Copyright © 2019 Dayana Romero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let b = sender as! UIButton
        let seleccion: String = b.titleLabel!.text!
        let sigVista = segue.destination as! MasaViewController
        sigVista.tamanoP = seleccion
    }


}

