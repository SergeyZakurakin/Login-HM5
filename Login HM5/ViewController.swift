//
//  ViewController.swift
//  Login HM5
//
//  Created by Sergey Zakurakin on 19/02/2024.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    // MARK: - Private propertis
    
    private let login = "zak"
    private let password = "7777"
    private var userName = ""
    
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }


    //MARK: - IBActions
    
    @IBAction func loginButton(_ sender: UIButton) {
        userName = userNameTextField.text ?? ""
        if login == userName && password == passwordTextField.text{
            print("successful login")
            performSegue(withIdentifier: "welcomeSegue", sender: self)
            passwordTextField.text = ""
        } else {
            showAlert(with: "wrong pass")
        }
    }
    
    
    @IBAction func forgotUserNameButton(_ sender: UIButton) {
        showAlert(with: "zak")
    }
    
    
    
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        showAlert(with: "7777")
    }
    
    
//MARK: - Private functions
    
    private func showAlert(with title: String) {
        let alertController = UIAlertController(title: "Login", message: title, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Close", style: .cancel)
        alertController.addAction(okAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
        
    
    
    //MARK: - Public functions
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "welcomeSegue" {
            if let destinationVC = segue.destination as? WelcomeVC {
                destinationVC.userName = userNameTextField.text ?? ""
            }
        }
    }
    
}

//
