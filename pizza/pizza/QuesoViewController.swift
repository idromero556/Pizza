//
//  QuesoViewController.swift
//  pizza
//
//  Created by Dayana Romero on 8/5/19.
//  Copyright © 2019 Dayana Romero. All rights reserved.
//

import UIKit

class QuesoViewController: UIViewController {
    
    var tamanoP: String? = nil
    var masaP: String? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let b = sender as! UIButton
        let seleccion: String = b.titleLabel!.text!
        let sigVista = segue.destination as! IngredientesViewController
        sigVista.tamanoP = self.tamanoP
        sigVista.masaP = self.masaP
        sigVista.quesoP = seleccion
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
