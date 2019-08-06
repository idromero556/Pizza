//
//  OrdenViewController.swift
//  pizza
//
//  Created by Dayana Romero on 8/5/19.
//  Copyright © 2019 Dayana Romero. All rights reserved.
//

import UIKit

class OrdenViewController: UIViewController {

    
    @IBOutlet weak var tamano: UILabel!
    @IBOutlet weak var masa: UILabel!
    @IBOutlet weak var queso: UILabel!
    @IBOutlet weak var ingr1: UILabel!
    @IBOutlet weak var ingr2: UILabel!
    @IBOutlet weak var ingr3: UILabel!
    @IBOutlet weak var ingr4: UILabel!
    @IBOutlet weak var ingr5: UILabel!
    
    var tamanoP: String? = nil
    var masaP: String? = nil
    var quesoP: String? = nil
    var ingrP1: String? = nil
    var ingrP2: String? = nil
    var ingrP3: String? = nil
    var ingrP4: String? = nil
    var ingrP5: String? = nil
    
    override func viewWillAppear(_ animated: Bool) {
        tamano.text=String(tamanoP!)
        masa.text=String(masaP!)
        queso.text=String(quesoP!)
        ingr1.text=String(ingrP1!)
        ingr2.text=String(ingrP2!)
        ingr3.text=String(ingrP3!)
        ingr4.text=String(ingrP4!)
        ingr5.text=String(ingrP5!)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let b = sender as! UIButton
        let seleccion: String = b.titleLabel!.text!
        if seleccion == "Modificar I"{
            let sigVista = segue.destination as! IngredientesViewController
            sigVista.tamanoP = self.tamanoP
            sigVista.masaP = self.masaP
            sigVista.quesoP = self.quesoP
            sigVista.ingrP1 = self.ingrP1!
            sigVista.ingrP2 = self.ingrP2!
            sigVista.ingrP3 = self.ingrP3!
            sigVista.ingrP4 = self.ingrP4!
            sigVista.ingrP5 = self.ingrP5!
        }else if seleccion == "Modificar M"{
            let sigVista = segue.destination as! MasaViewController
            sigVista.tamanoP = self.tamanoP
        }else if seleccion == "Modificar Q"{
            let sigVista = segue.destination as! QuesoViewController
            sigVista.tamanoP = self.tamanoP
            sigVista.masaP = self.masaP
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
