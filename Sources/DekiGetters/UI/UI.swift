//
//  File.swift
//  
//
//  Created by Dexter Ramos on 2/16/24.
//

import UIKit

public protocol DekiGettersUI: DekiGettersUIViewController, DekiGettersUIScreen { }

extension DekiGetters.UI: DekiGettersUI {
    
    // MARK: ViewController
    
    public static var topViewController: UIViewController? { DekiGetters.UI.VC.topViewController }
    
    public static var topVisibleViewController: UIViewController? { DekiGetters.UI.VC.topVisibleViewController }
    
    // MARK: Screen
    
    public static var keyWindow: UIWindow? { DekiGetters.UI.Screen.keyWindow }
    
    public static var windowSize: CGRect? { DekiGetters.UI.Screen.windowSize }
    
    public static var safeAreaInsets: UIEdgeInsets? { DekiGetters.UI.Screen.safeAreaInsets }
    
    public static var screenSize: CGSize { DekiGetters.UI.Screen.screenSize }
    
    public static var screenScale: CGFloat { DekiGetters.UI.Screen.screenScale }
    
    public static var statusBarFrame: CGRect { DekiGetters.UI.Screen.statusBarFrame }
    
    public static var navBarFrame: CGRect? { DekiGetters.UI.Screen.navBarFrame }
}
