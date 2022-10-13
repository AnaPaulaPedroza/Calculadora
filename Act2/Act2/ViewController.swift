//
//  ViewController.swift
//  Act2
//
//  Created by Ana Paula Pedroza on 30/09/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var NumeroSuperior: UITextField!
    
    @IBOutlet weak var NumeroInferior: UITextField!
    
    @IBAction func Division(_ sender: Any) {
        // Código con validación de variables
        let NumUno = Float(NumeroSuperior.text!)
        let NumDos = Float(NumeroInferior.text ?? "0")
        var mensaje = "Favor de completar ambos campos."
        if (NumUno != nil && NumDos != nil && NumDos != 0)
        {
            let resultado = (NumUno ?? 0)/(NumDos ?? 0)
            mensaje = String(resultado)
        }
        if (NumDos == 0){
            mensaje = "No se puede dividir entre 0"
        }
        
        MostrarAlerta(mensaje: mensaje)
    }
    
    
    @IBAction func Multiply(_ sender: Any) {
        let NumUno = Float(NumeroSuperior.text!)
        let NumDos = Float(NumeroInferior.text ?? "0")
        var mensaje = "Favor de completar ambos campos."
        if (NumUno != nil && NumDos != nil)
        {
            let resultado = (NumUno ?? 0)*(NumDos ?? 0)
            mensaje = String(resultado)
        }
        
        MostrarAlerta(mensaje: mensaje)
    }
    
    @IBAction func Suma(_ sender: Any) {
        let NumUno = Float(NumeroSuperior.text!)
        let NumDos = Float(NumeroInferior.text ?? "0")
        var mensaje = "Favor de completar ambos campos."
        if (NumUno != nil && NumDos != nil)
        {
            let resultado = (NumUno ?? 0)+(NumDos ?? 0)
            mensaje = String(resultado)
        }
        
        MostrarAlerta(mensaje: mensaje)
    }
        
    @IBAction func Resta(_ sender: Any) {
        let NumUno = Float(NumeroSuperior.text!)
        let NumDos = Float(NumeroInferior.text ?? "0")
        var mensaje = "Favor de completar ambos campos."
        if (NumUno != nil && NumDos != nil)
        {
            let resultado = (NumUno ?? 0)-(NumDos ?? 0)
            mensaje = String(resultado)
        }
        
        MostrarAlerta(mensaje: mensaje)
    }
    
    
    @IBAction func ButtonUnoClick(_ sender: Any) {
        MostrarAlerta(mensaje: UsuarioTextField.text!)
    }
    @IBOutlet weak var TituloLabel: UILabel!
    
    @IBOutlet weak var UsuarioTextField: UITextField!

    @IBOutlet weak var ContrasenaTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        TituloLabel.text = "Segunda App"
        TituloLabel.textColor = UIColor(red: 36/255, green: 80/255, blue: 155/255, alpha: 1.0)
    }
    
    func MostrarAlerta(mensaje: String) {
        let alert = UIAlertController(title: "Alerta!!", message: mensaje, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.cancel))
        self.present(alert, animated: true, completion: nil)
        
    }


}

