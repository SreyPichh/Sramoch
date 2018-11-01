//
//  ViewControllerSubview.swift
//  FLEX
//
//  Created by Sreypich Phan on 10/22/18.
//  Copyright © 2018 Sreypich Phan. All rights reserved.
//

import Foundation
import SnapKit
import Then
import Neon


class ViewControllerSubview {
    let label = UILabel().then {
        $0.text = "Sign Up"
        $0.textColor = UIColor.white
    }
//    let box = UIView().then {
//        $0.backgroundColor = UIColor(white: 1, alpha: 0.5)
//    }
    lazy var imageView = UIImageView(image: R.image.background.background()).then{ (view) in }
    
    let signupBtn = UIButton().then {
        $0.setTitle("Sign Up", for: .normal)
        $0.titleLabel?.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 25.0)
        $0.layer.cornerRadius = 5.0
        $0.tintColor = UIColor.red
        $0.layer.borderWidth = 1.0
        $0.layer.borderColor = UIColor.white.cgColor
    }
    
    let emailErrorMsg = UILabel().then {
        $0.textColor = UIColor.red
    }
    
    let pwdErrorMsg = UILabel().then {
        $0.textColor = UIColor.red
    }
    
    let passwordTextInput = UITextField().then {
        $0.placeholder = "Password"
        $0.layer.cornerRadius = 5.0
        $0.layer.borderWidth = 1.0
        $0.layer.borderColor = UIColor.white.cgColor
        $0.autocapitalizationType = .none
        //show the done title instead of the defualt return key on the keyboard
        $0.returnKeyType = .done
        //indicate that this is a password field by making the following flag true
        $0.isSecureTextEntry = true
    }
    
    let emailTextInput = UITextField().then {
        $0.placeholder = "Email"
        $0.layer.cornerRadius = 5.0
        $0.layer.borderWidth = 1.0
        $0.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        $0.layer.borderColor = UIColor.white.cgColor
    }
    
    let re_passwordTextInput = UITextField().then {
        $0.placeholder = "Confirm Password"
        $0.layer.cornerRadius = 5.0
        $0.layer.borderWidth = 1.0
        $0.layer.borderColor = UIColor.white.cgColor
        $0.autocapitalizationType = .none
        //show the done title instead of the defualt return key on the keyboard
        $0.returnKeyType = .done
        //indicate that this is a password field by making the following flag true
        $0.isSecureTextEntry = true
    }
    let txtLabel = UILabel().then {
        $0.text = "Already have account?"
    }
 
    func updateConstraint() {
        self.label.snp.makeConstraints { (make) in
            make.width.equalTo(80)
            make.height.equalTo(30)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(50)
        }
        self.signupBtn.snp.makeConstraints { (make) in
            make.width.equalTo(150)
            make.height.equalTo(80)
            make.centerX.equalToSuperview()
            make.top.equalTo(self.re_passwordTextInput.snp.bottom).offset(50)
        }
        self.emailTextInput.snp.makeConstraints { (make) in
            make.width.equalTo(350)
            make.height.equalTo(450)
            make.centerX.equalToSuperview()
            make.top.equalTo(self.label.snp.bottom).offset(50)
            make.height.equalTo(45)
        }
        self.passwordTextInput.snp.makeConstraints { (make) in
            make.width.equalTo(350)
            make.height.equalTo(45)
            make.centerX.equalToSuperview()
            make.top.equalTo(self.emailTextInput.snp.bottom).offset(30)
            
            
        }
        self.re_passwordTextInput.snp.makeConstraints { (make) in
            make.width.equalTo(350)
            make.height.equalTo(45)
            make.centerX.equalToSuperview()
            make.top.equalTo(self.passwordTextInput.snp.bottom).offset(30)
        }
        self.emailErrorMsg.snp.makeConstraints { (make) in
            make.width.equalTo(350)
            make.height.equalTo(30)
            make.top.equalTo(self.emailTextInput.snp.bottom)
        }
        self.pwdErrorMsg.snp.makeConstraints { (make) in
            make.width.equalTo(350)
            make.height.equalTo(30)
            make.top.equalTo(self.passwordTextInput.snp.bottom)
        }
    }
}

