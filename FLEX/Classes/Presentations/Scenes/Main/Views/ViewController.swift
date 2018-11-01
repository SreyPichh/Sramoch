//
//  ViewController.swift
//  FLEX
//
//  Created by Sreypich Phan on 10/22/18.
//  Copyright © 2018 Sreypich Phan. All rights reserved.
//

import UIKit
import RxSwift
import ReactorKit
import RxCocoa

class ViewController: UIViewController {
    
    let subview: ViewControllerSubview = ViewControllerSubview()
    var disposeBag: DisposeBag = DisposeBag()
    

}

extension ViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        self.view.addSubview(self.subview.imageView)
        //self.view.addSubview(self.subview.box)
        self.view.addSubview(self.subview.label)
        self.view.addSubview(self.subview.emailTextInput)
        self.view.addSubview(self.subview.passwordTextInput)
        self.view.addSubview(self.subview.re_passwordTextInput)
        self.view.addSubview(self.subview.signupBtn)
        self.view.addSubview(self.subview.emailErrorMsg)
        self.view.addSubview(self.subview.pwdErrorMsg)
        self.view.backgroundColor = UIColor.lightGray
        
    }
    
    override func viewDidLayoutSubviews() {
        self.subview.updateConstraint()
    }
    
}

extension ViewController: StoryboardView {
    func bind(reactor: ViewControllerReactor) {
        self.subview.emailTextInput.rx.text
            .filter {($0?.count)! > 0 }
            .map{Reactor.Action.inputEmail($0!)}
            .bind(to: reactor.action)
            .disposed(by: self.disposeBag)
        self.subview.passwordTextInput.rx.text
            .filter { ($0?.count)! > 0 }
            .map {Reactor.Action.inputPassword($0!) }
            .bind(to: reactor.action)
            .disposed(by: self.disposeBag)
        self.subview.re_passwordTextInput.rx.text
            .filter{($0?.count)! > 0 }
            .map{Reactor.Action.re_inputPassword($0!)}
            .bind(to: reactor.action)
            .disposed(by: self.disposeBag)
        self.subview.signupBtn.rx.tap
            .map { Reactor.Action.signUp }
            .bind(to: reactor.action)
            .disposed(by: self.disposeBag)
        self.reactor?.state
            .map{$0.emailValidate}
            .bind(to: self.subview.emailErrorMsg.rx.text)
            .disposed(by: self.disposeBag)
        self.reactor?.state
            .map{$0.pwdValidate}
            .bind(to: self.subview.pwdErrorMsg.rx.text)
            .disposed(by: disposeBag)

    }
}
