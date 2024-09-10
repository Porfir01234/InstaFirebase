//
//  SettingsViewController.swift
//  InstaCloneFirebase
//
//  Created by Jazmin on 10/09/24.
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
// para decirle a FireBase que se ha cerrado la sesion del usuario
        do {
           try Auth.auth().signOut()
           performSegue(withIdentifier: "toViewController", sender: nil)
        } catch {
            print("error")
        }
        
        
    }
    
  

}
