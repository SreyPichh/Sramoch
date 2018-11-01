////
////  SignupFlow.swift
////  FLEX
////
////  Created by Sreypich Phan on 10/31/18.
////  Copyright © 2018 Sreypich Phan. All rights reserved.
////
//
//import Foundation
//import UIKit
//import RxFlow
//
//enum DemoStep: Step{
//    case apiKey
//    case apiKeyIsComplete
//    
//    case siguped
//}
//
//class SignupFlow: Flow {
//    var root: UIViewController {
//        return self.rooViewController
//    }
//    
//    private let rootViewController = UINavigationController()
//    private let service: NetService
//    
////    init(withService ser)
//    
//    func navigate(to step: Step) -> NextFlowItems {
//        guard let step = step as? DemoStep else { return NextFlowItem.noNavigation}
//    
//        switch step {
//        case .siguped:
//            return navigateToLoginScreen
//        }
//    }
//    
//    private func navigateToLoginScreen () -> [NextFlowItem] {
//        let veiwModel = UserViewModel(with: service)
//        let veiwController = ViewController.instantiate(with: )
//        
//    }
//    
//}
//
