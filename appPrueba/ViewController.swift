//
//  ViewController.swift
//  appPrueba
//
//  Created by DAMII on 13/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtNumero1: UITextField!
    @IBOutlet weak var txtNumero2: UITextField!
    @IBOutlet weak var btnCalcular: UIButton!
    @IBOutlet weak var txtResult: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    

    @IBAction func btnCalcular(_ sender: Any) {
        /* Variables */
        var n1, n2, result: Int;
        // OPTIONAL: var num1, num2: String?
        
        /* Entrada */
        // OPTIONAL: num1 = txtNumero1.text
        n1 = Int(txtNumero1.text ?? "0") ?? 0;
        n2 = Int(txtNumero2.text ?? "0") ?? 0;
        result = n1 + n2;
        txtResult.text = String(result);
    }
    
    @IBAction func btnResume(_ sender: Any) {
        // Crear objeto de tipo UIStoryBoard
        let data = UIStoryboard(name: "Main", bundle: nil)
        // Acceder al identificador "resume"
        let pantallaResume = data.instantiateViewController(withIdentifier: "resume") as! DetalleViewController
        
        // Direccionar
        present(pantallaResume, animated: true)
    }
}

