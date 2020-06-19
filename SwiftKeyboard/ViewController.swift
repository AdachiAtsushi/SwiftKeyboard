//
//  ViewController.swift
//  SwiftKeyboard
//
//  Created by 安達篤史 on 2020/06/17.
//  Copyright © 2020 Adachi Atsushi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var logoImageView: UIImageView!
        
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passWordTextField: UITextField!
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.delegate = self
        passWordTextField.delegate = self
    }
    
    // ボタン押下時のアクション定義
    @IBAction func login(_ sender: Any) {
        // ログイン成功時の画像を切り替え
        logoImageView.image = UIImage(named: "loginOK")
        
        // 各テキストの値をラベルに渡す
        userNameLabel.text = userNameTextField.text
        passwordLabel.text = passWordTextField.text
        
        
    }
    
    // タッチでキーボードを閉じる
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    // リターンキー押下時にキーボードを閉じる
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    

}

