//
//  File.swift
//  
//
//  Created by Dexter Ramos on 2/16/24.
//

import UIKit

public protocol DekiGettersUI: DekiGettersUIViewController, DekiGettersUIScreen { }

public extension DekiGettersUI {
    
    // MARK: ViewController
    
    static var topViewController: UIViewController? { DekiGetters.UI.VC.topViewController }
    
    static var topVisibleViewController: UIViewController? { DekiGetters.UI.VC.topVisibleViewController }
    
    // MARK: Screen
    
    static var keyWindow: UIWindow? { DekiGetters.UI.Screen.keyWindow }
    
    static var windowSize: CGRect? { DekiGetters.UI.Screen.windowSize }
    
    static var safeAreaInsets: UIEdgeInsets? { DekiGetters.UI.Screen.safeAreaInsets }
    
    static var screenSize: CGSize { DekiGetters.UI.Screen.screenSize }
    
    static var screenScale: CGFloat { DekiGetters.UI.Screen.screenScale }
    
    static var statusBarFrame: CGRect { DekiGetters.UI.Screen.statusBarFrame }
    
    static var navBarFrame: CGRect? { DekiGetters.UI.Screen.navBarFrame }
}

