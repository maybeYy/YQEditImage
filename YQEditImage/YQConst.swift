//
//  YQConst.swift
//  YQEditImage
//
//  Created by yinshengqi on 2025/3/10.
//
import Foundation
import UIKit
let YQScreenW: CGFloat = UIScreen.main.bounds.size.width
let YQcreenH: CGFloat = UIScreen.main.bounds.size.height
var yq_safeAreaInset: UIEdgeInsets {
    if #available(iOS 11.0, *),let safeAreaInsets = UIApplication.shared.delegate?.window??.safeAreaInsets {
        return safeAreaInsets
    }else{
        return .zero
    }
}
var yq_statusBarH: CGFloat {
    return UIApplication.shared.statusBarFrame.size.height
}
func yq_hexColor(_ hex:UInt,alpha :CGFloat = 1) -> UIColor {
    let r  = CGFloat((hex & 0xFF0000) >> 16) / 255.0
    let g  = CGFloat((hex & 0x00FF00) >> 8) / 255.0
    let b  = CGFloat(hex & 0x0000FF) / 255.0
    return UIColor.init(red: CGFloat(r), green: CGFloat(g), blue: CGFloat(b), alpha: alpha)
}

extension UIFont {
    
    public static func pfRegular(_ size: CGFloat) -> UIFont {
        guard let font = UIFont(name: "PingFangSC-Regular", size: size) else {
            return UIFont.systemFont(ofSize: size)
        }
        return font
    }
    public static func pfMedium(_ size: CGFloat) -> UIFont {
        guard let font = UIFont(name: "PingFangSC-Medium", size: size) else {
            return UIFont.systemFont(ofSize: size)
        }
        return font
    }
    public static func pfSemibold(_ size: CGFloat) -> UIFont {
        guard let font = UIFont(name: "PingFangSC-Semibold", size: size) else {
            return UIFont.systemFont(ofSize: size)
        }
        return font
    }
}
extension UIViewController {
    
    func backToExit() {
        if let navigationViewController = navigationController {
            if navigationViewController.viewControllers.count == 1 {
                // dismiss the presented navigation view controller
                if navigationViewController.presentingViewController != nil {
                    navigationViewController.dismiss(animated: true)
                } else {
                    if navigationViewController.navigationController != nil {
                        navigationViewController.backToExit()
                    } else if let tabBarController = navigationController?.tabBarController {
                        tabBarController.backToExit()
                    } else {
                        
                    }
                }
            } else {
                navigationController?.popViewController(animated: true)
            }
        } else if presentingViewController != nil {
            dismiss(animated: true, completion: nil)
        } else {
            assertionFailure()
        }
    }
}
