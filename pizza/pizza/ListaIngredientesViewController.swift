//
//  ListaIngredientesViewController.swift
//  pizza
//
//  Created by Dayana Romero on 8/5/19.
//  Copyright © 2019 Dayana Romero. All rights reserved.
//

import UIKit

class ListaIngredientesViewController: UIViewController {
    
    var tamanoP: String? = nil
    var masaP: String? = nil
    var quesoP: String? = nil
    var ingrP1: String? = nil
    var ingrP2: String? = nil
    var ingrP3: String? = nil
    var ingrP4: String? = nil
    var ingrP5: String? = nil
    var boton: String? = nil

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
        sigVista.quesoP = self.quesoP
        if boton == "INGREDIENTE 1"{
            sigVista.ingrP1 = seleccion
            sigVista.ingrP2 = self.ingrP2!
            sigVista.ingrP3 = self.ingrP3!
            sigVista.ingrP4 = self.ingrP4!
            sigVista.ingrP5 = self.ingrP5!
        }else if boton == "INGREDIENTE 2"{
            sigVista.ingrP2 = seleccion
            sigVista.ingrP1 = self.ingrP1!
            sigVista.ingrP3 = self.ingrP3!
            sigVista.ingrP4 = self.ingrP4!
            sigVista.ingrP5 = self.ingrP5!
        }else if boton == "INGREDIENTE 3"{
            sigVista.ingrP3 = seleccion
            sigVista.ingrP1 = self.ingrP1!
            sigVista.ingrP2 = self.ingrP2!
            sigVista.ingrP4 = self.ingrP4!
            sigVista.ingrP5 = self.ingrP5!
        }else if boton == "INGREDIENTE 4"{
            sigVista.ingrP4 = seleccion
            sigVista.ingrP1 = self.ingrP1!
            sigVista.ingrP2 = self.ingrP2!
            sigVista.ingrP3 = self.ingrP3!
            sigVista.ingrP5 = self.ingrP5!
        }else if boton == "INGREDIENTE 5"{
            sigVista.ingrP5 = seleccion
            sigVista.ingrP1 = self.ingrP1!
            sigVista.ingrP2 = self.ingrP2!
            sigVista.ingrP3 = self.ingrP3!
            sigVista.ingrP4 = self.ingrP4!
        }
        

        
        
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
