//
//  iniciarSesionViewController.swift
//  HuacacSnapchat
//
//  Created by HuacacJaime on 29/05/24.
//

import UIKit
import Firebase
import FirebaseAuth

class iniciarSesionViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) {
            (user, err) in
            print("Intentando Iniciar Sesion")
            if err != nil {
                print("Se presentó el siguiente error:\(err)")
            } else {
                print("Inicio de Sesion Exitoso!")
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
