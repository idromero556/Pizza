//
//  IngredientesViewController.swift
//  pizza
//
//  Created by Dayana Romero on 8/5/19.
//  Copyright © 2019 Dayana Romero. All rights reserved.
//

import UIKit

class IngredientesViewController: UIViewController {
    
    var tamanoP: String? = nil
    var masaP: String? = nil
    var quesoP: String? = nil
    var ingrP1: String = "Sin ingrediente"
    var ingrP2: String = "Sin ingrediente"
    var ingrP3: String = "Sin ingrediente"
    var ingrP4: String = "Sin ingrediente"
    var ingrP5: String = "Sin ingrediente"
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let b = sender as! UIButton
        let seleccion: String = b.titleLabel!.text!
        print (seleccion)
        if seleccion == "CONTINUAR"{
            let sigVista = segue.destination as! OrdenViewController
            sigVista.tamanoP = self.tamanoP
            sigVista.masaP = self.masaP
            sigVista.quesoP = self.quesoP
            sigVista.ingrP1 = self.ingrP1
            sigVista.ingrP2 = self.ingrP2
            sigVista.ingrP3 = self.ingrP3
            sigVista.ingrP4 = self.ingrP4
            sigVista.ingrP5 = self.ingrP5
            
        }else{
            let sigVista = segue.destination as! ListaIngredientesViewController
            sigVista.tamanoP = self.tamanoP
            sigVista.masaP = self.masaP
            sigVista.quesoP = self.quesoP
            sigVista.ingrP1 = self.ingrP1
            sigVista.ingrP2 = self.ingrP2
            sigVista.ingrP3 = self.ingrP3
            sigVista.ingrP4 = self.ingrP4
            sigVista.ingrP5 = self.ingrP5
            sigVista.boton = seleccion
            
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
