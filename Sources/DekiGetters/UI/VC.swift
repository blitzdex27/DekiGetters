//
//  File.swift
//  
//
//  Created by Dexter Ramos on 2/16/24.
//

import UIKit

public protocol DekiGettersUIViewController {
    static var topViewController: UIViewController? { get }
    static var topVisibleViewController: UIViewController? { get }
}

extension DekiGetters.UI {
    enum VC: DekiGettersUIViewController {
        /// Returns UIViewController/UINavigationController
        static var topViewController: UIViewController? {
            var topVC = Screen.keyWindow?.rootViewController
            while let presentedVC = topVC?.presentedViewController {
                topVC = presentedVC
            }
            return topVC
        }
        
        /// Returns UIViewController
        static var topVisibleViewController: UIViewController? {
            let topVC = topViewController
            
            if let navVC = topVC as? UINavigationController {
                return navVC.visibleViewController
            } else{
                return topVC
            }
        }
    }
}
