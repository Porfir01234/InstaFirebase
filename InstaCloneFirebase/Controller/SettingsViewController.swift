//
//  SettingsViewController.swift
//  InstaCloneFirebase
//
//  Created by Porfirio on 10/09/24.
//

import UIKit
import FirebaseCore
import FirebaseAuth
class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutButton(_ sender: UIButton) {
// Cerrar Sesión 
        do {
           try Auth.auth().signOut()
           performSegue(withIdentifier: "toViewController", sender: nil)
        } catch {
            print("error")
        }
        
        
    }
    
  

}
