//
//  ViewController.swift
//  SwiftKeyboard
//
//  Created by 安達篤史 on 2020/06/17.
//  Copyright © 2020 Adachi Atsushi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var logoImageView: UIImageView!
    
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passWordTextField: UITextField!
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // ボタン押下時のアクション定義
    @IBAction func login(_ sender: Any) {
        // 各テキストの値をラベルに渡す
        userNameLabel.text = userNameTextField.text
        passwordLabel.text = passWordTextField.text
        
        
    }
    

}

