//
//  HelloViewController.swift
//  Alert
//
//  Created by Инна Степанова on 01.11.2021.
//

import UIKit

class HelloViewController: UIViewController {
    
    @IBOutlet var helloUserLabel: UILabel!
    var user: UserInfo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloUserLabel.text = "Hello, \(user.userName)!"
    }
    
}
