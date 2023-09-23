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
    // OPTIONAL: var num1, num2: String?
    /* Variables */
    var n1 = 0, n2 = 0, result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    

    @IBAction func btnCalcular(_ sender: Any) {
        // OPTIONAL: var num1, num2: String?
        /* Variables */
        // var n1 = 0, n2 = 0, result = 0
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
        // Acceder a los atributos de "resume"
        pantallaResume.n1 = n1
        pantallaResume.n2 = n2
        pantallaResume.result = result
        
        // Direccionar
        present(pantallaResume, animated: true)
    }
}

