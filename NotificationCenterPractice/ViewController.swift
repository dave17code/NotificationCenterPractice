//
//  ViewController.swift
//  NotificationCenterPractice1
//
//  Created by woonKim on 2023/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextButton(_ sender: Any) {
        
        NotificationCenter.default.addObserver(self, selector: #selector(dataReceived(_:)), name: Notification.Name("sample"), object: nil)
    }
    
    @objc func dataReceived(_ notification: Notification) {
        
        if let text = notification.object as? String {
            dataLabel.text = text
        }
        NotificationCenter.default.removeObserver(self)
    }
}

