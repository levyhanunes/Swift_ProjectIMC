//
//  ViewController.swift
//  IMC
//
//  Created by user195088 on 4/22/21.
//

import UIKit

class ViewController: UIViewController {
    
    var imc: Double = 0;
    
    	
    @IBOutlet weak var tfPWeight: UITextField!
    
    @IBOutlet weak var tfHeight: UITextField!
    
    @IBOutlet weak var lbResult: UILabel!
    
    @IBOutlet weak var ivResult: UIImageView!
    
    @IBOutlet var viResult: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    	
    @IBAction func calculate(_ sender: Any) {
        if let weight = Double(tfPWeight.text!), let height = Double(tfHeight.text!) {
                imc = weight / pow(height, 2)
       
                showResults()
            }
        }
        
        func showResults(){
            var result: String = ""
            var image: String = ""
            
            switch imc {
            case 0..<16:
                result = "Magreza"
                image = "abaixo"
            
            case 16..<18.5:
                result = "Abaixo do peso"
                image = "abaixo"
                
            case 18.5..<25:
                result = "Peso Ideal"
                image = "ideal"
                
            case 25..<30:
                result = "Sobre peso"
                image = "sobre"
                
            default:
                result = "Obesidade"
                image = "obesidade"
            }
            lbResult.text = "\(Int(imc)): \(result)"
            ivResult.image = UIImage(named: image)
            viResult.isHidden = false
            view.endEditing(true)
        }
    
    }
    

