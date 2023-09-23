//
//  DetalleViewController.swift
//  appPrueba
//
//  Created by Sadohu on 20/09/23.
//

import UIKit

class DetalleViewController: UIViewController {
    
    @IBOutlet weak var lblNumero1: UILabel!
    @IBOutlet weak var lblNumero2: UILabel!
    @IBOutlet weak var lblResult: UILabel!
    /* Variables */
    var n1 = 0, n2 = 0, result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblNumero1.text = "Número 1: " + String(n1)
        lblNumero2.text = "Número 2: " + String(n2)
        lblResult.text = "Resultado: " + String(result)
    }
    
    @IBAction func btnVolver(_ sender: Any) {
        dismiss(animated: true)
    }

}
