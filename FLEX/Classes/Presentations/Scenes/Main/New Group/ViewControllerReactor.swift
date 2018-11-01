//
//  ViewControllerReactor.swift
//  FLEX
//
//  Created by Sreypich Phan on 10/30/18.
//  Copyright © 2018 Sreypich Phan. All rights reserved.
//

import Foundation
import ReactorKit
import RxCocoa
import RxSwift

class ViewControllerReactor: Reactor {
    enum Action {
        case inputEmail(String)
        case inputPassword(String)
        case re_inputPassword(String)
        case signUp
        
    }
    enum Mutation {
        case inputEmail(String)
        case inputPassword(String)
        case inputEmailValidate(String)
        case inputPasswordValidate(String)
    }
    
    var initialState: ViewControllerReactor.State
    
    struct State {
        var email: String
        var pwd: String
        var re_pwd: String
        var emailValidate: String
        var pwdValidate: String
        var re_pwdValidate: String
    }
    init() {
        initialState = State(email: "", pwd: "", re_pwd: "", emailValidate: "", pwdValidate: "", re_pwdValidate: "")
    }
    
    func mutate(action: ViewControllerReactor.Action) -> Observable<ViewControllerReactor.Mutation> {
        switch action {
        case .inputEmail(let email):
            var msg: String = ""
            if self.isEmailValidate(email: email){
                msg = email
                print(msg)
            }
            else{
                msg = "Input a validate Email!"
            }
            return Observable.concat([Observable.just(Mutation.inputEmail(email)), Observable.just(Mutation.inputEmailValidate(msg))])

        case .inputPassword(let pwd):
            var msg: String = ""
            if self.isPasswordValidate(pwd: pwd){
                msg = pwd
            }
            else{
                msg = "Input a valid password"
            }
            return Observable.concat([Observable.just(Mutation.inputPassword(pwd)), Observable.just(Mutation.inputPasswordValidate(msg))])
            
        case .re_inputPassword( _):
            return Observable.empty()
        case .signUp:
            if isPasswordValidate(pwd: self.currentState.pwd) && isEmailValidate(email: self.currentState.email) {
                print("Successful Signup")
            }
            return Observable.empty()
        }
        
    }
    
    func reduce(state: ViewControllerReactor.State, mutation: ViewControllerReactor.Mutation) -> ViewControllerReactor.State {
        var newState = state
        switch mutation {
        case .inputEmail(let email):
            newState.email = email
            print(email)
        case .inputPassword(let pwd):
            newState.pwd = pwd
        case .inputEmailValidate(let emailValidate):
            newState.emailValidate = emailValidate
        case .inputPasswordValidate(let pwdValidate):
            newState.pwdValidate = pwdValidate
        }
        return newState

    }
    
    func isEmailValidate(email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: email)
        
    }
    func isPasswordValidate(pwd: String) -> Bool {
        let passwordRegex = "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z!@#$%^&*()\\-_=+{}|?>.<,:;~`’]{8,}$"
        return NSPredicate(format: "SELF MATCHES %@", passwordRegex).evaluate(with: pwd)
    }
    
    
}
