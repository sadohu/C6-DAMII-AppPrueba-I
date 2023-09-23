//
//  PersonaViewController.swift
//  appPrueba
//
//  Created by Sadohu on 22/09/23.
//

import UIKit

class PersonaViewController: UIViewController {

    @IBOutlet weak var btnPersona1: UIButton!
    @IBOutlet weak var btnPersona2: UIButton!
    @IBOutlet weak var btnPersona3: UIButton!
    @IBOutlet weak var imgFoto: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnPersona1.setImage(UIImage(named: "radio_off"), for: .normal);
        btnPersona2.setImage(UIImage(named: "radio_off"), for: .normal);
        btnPersona3.setImage(UIImage(named: "radio_off"), for: .normal);
        
        btnPersona1.setImage(UIImage(named: "radio_on"), for: .selected);
        btnPersona2.setImage(UIImage(named: "radio_on"), for: .selected);
        btnPersona3.setImage(UIImage(named: "radio_on"), for: .selected);
    }
    @IBAction func btnPersona(_ sender: UIButton) {
        // Validar el valor de sender
        if sender == btnPersona1 {
            btnPersona1.isSelected = true;
            btnPersona2.isSelected = false;
            btnPersona3.isSelected = false;
            imgFoto.image = UIImage(named: "persona1");
        }
        else if sender == btnPersona2 {
            btnPersona1.isSelected = false;
            btnPersona2.isSelected = true;
            btnPersona3.isSelected = false;
            imgFoto.image = UIImage(named: "persona2");
        }
        else if sender == btnPersona3 {
            btnPersona1.isSelected = false;
            btnPersona2.isSelected = false;
            btnPersona3.isSelected = true;
            imgFoto.image = UIImage(named: "persona3");
        }
    }
}
