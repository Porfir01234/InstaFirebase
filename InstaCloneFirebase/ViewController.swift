//
//  ViewController.swift
//  InstaCloneFirebase
//
//  Created by Jazmin on 09/09/24.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
 //Proyecto listo para continuar
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signInClicked(_ sender: UIButton) {
        performSegue(withIdentifier: "toFeedVC", sender: nil)
    }
    
    @IBAction func signUpClicked(_ sender: UIButton) {
    }
}

