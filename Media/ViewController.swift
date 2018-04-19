//
//  ViewController.swift
//  Media
//
//  Created by Vinicius Tenorio on 4/16/18.
//  Copyright © 2018 Vinicius Tenorio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfNota1: UITextField!
    @IBOutlet weak var tfNota2: UITextField!
    @IBOutlet weak var tfNota3: UITextField!
    @IBOutlet weak var ivStatus: UIImageView!
    @IBOutlet weak var lbSituacao: UILabel!
    var media: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func verificarNota(_ sender: Any) {
        if let nota1 = Double (tfNota1.text!),
            let nota2 = Double (tfNota2.text!),
            let nota3 = Double (tfNota3.text!){
            media  = (nota1 + nota2 + nota3) / 3
            var imagem: String = " "
            var resultado: String = ""
            
            if (media < 6){
                imagem = "reprovado"
                resultado = "reprovado"
                
            }
            else{
                imagem = "aprovado"
                resultado = "aprovado"
            }
            lbSituacao.text = resultado
            ivStatus.image = UIImage(named:imagem)
        }
        
    }
    
    
}

