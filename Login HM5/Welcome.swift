//
//  Welcome.swift
//  Login HM5
//
//  Created by Sergey Zakurakin on 19/02/2024.
//

import UIKit

class Welcome: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    
    var userName = ""
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome \(userName) 👋"
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func closeButton() {
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
