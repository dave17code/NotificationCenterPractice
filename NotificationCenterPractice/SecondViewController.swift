//
//  SecondViewController.swift
//  NotificationCenterPractice1
//
//  Created by woonKim on 2023/11/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var dataTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func dataSendButton(_ sender: Any) {
        if let text = dataTextField.text {
            
            NotificationCenter.default.post(name: Notification.Name("sample"), object: text)
        }
        
        self.navigationController?.popViewController(animated: true)
    }
}
