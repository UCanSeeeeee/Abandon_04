//
//  LoginVC.swift
//  Login Demo
//
//  Created by 王杰 on 2022/1/14.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var usernameTextFiled: UITextField!
    @IBOutlet weak var passwordTextFiled: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "success",
           let destination = segue.destination as? SuccessVC
        else{return}
            destination.text = "登录成功"
        
            
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard identifier == "success"
        else { return true }
            let username = usernameTextFiled.text ?? ""
            if username.isEmpty{
                errorLabel.text = "请输入用户名"
                return false
            }
            let password = passwordTextFiled.text ?? ""
            if password.isEmpty{
                errorLabel.text = "请输入密码"
                return false
            }
            errorLabel.text = nil
        return true
        }
    
    
    
}
