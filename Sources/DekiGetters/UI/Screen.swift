//
//  File.swift
//  
//
//  Created by Dexter Ramos on 2/16/24.
//

import UIKit

public protocol DekiGettersUIScreen {
    
    static var keyWindow: UIWindow? { get }
    
    static var safeAreaInsets: UIEdgeInsets? { get }
    
    static var windowSize: CGRect? { get }
    
    static var screenSize: CGSize { get }
    
    static var screenScale: CGFloat { get }
    
    static var statusBarFrame: CGRect { get }
    
    static var navBarFrame: CGRect? { get }
}

extension DekiGetters.UI {
    
    enum Screen: DekiGettersUIScreen {
        
        static var keyWindow: UIWindow? {
            if #available(iOS 15.0, *) {
                let windowScene = UIApplication.shared.connectedScenes.first as! UIWindowScene
                return windowScene.keyWindow
            } else {
                return UIApplication.shared.windows.first { $0.isKeyWindow }
            }
        }
        
        
        static var safeAreaInsets: UIEdgeInsets? {
            return keyWindow?.safeAreaInsets
        }
        
        static var windowSize: CGRect? = keyWindow?.frame
        
        static let screenSize: CGSize = UIScreen.main.bounds.size
        
        static let screenScale: CGFloat = UIScreen.main.scale
        
        static let statusBarFrame: CGRect = {
            if #available(iOS 13.0, *) {
                let windowScene = UIApplication.shared.connectedScenes.first as! UIWindowScene
                return windowScene.statusBarManager?.statusBarFrame ?? .zero
            } else {
                return UIApplication.shared.statusBarFrame
            }
        }()
        
        static var navBarFrame: CGRect? {
            return VC.topViewController?.navigationController?.navigationBar.frame
        }
    }
}
