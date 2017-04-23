//
//  Extensions.swift
//  <%= project_name %>
//
//  Created by <%= author %> on <%= Time.now.strftime("%-m/%-d/%y") %>
//  Copyright (c) <%= Time.now.strftime('%Y') %> <%= company %>. All rights reserved.
//

import UIKit
import Foundation
import KeychainSwift

// MARK: UITextField
extension UIViewController {
    
    /// change root viewController
    func changeRootViewControllerTo(_ vc: String) {
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newRoot = mainStoryboard.instantiateViewController(withIdentifier: vc)
        let navigationController = storyboard?.instantiateViewController(withIdentifier: "rootNavigationController") as! UINavigationController
        navigationController.viewControllers = [newRoot]
        UIApplication.shared.keyWindow?.rootViewController = navigationController
        
        _ = navigationController.popToRootViewController(animated: true)
    }
    
    /// add gesture to dismiss keyboard
    func addKeyboardDismissGesture() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc fileprivate func dismissKeyboard() {
        view.endEditing(true)
    }
    
    /// Keychain functions
    final func saveDataToKeychain(_ value: String, forKey key: String) {
        let keychain = KeychainSwift()
        
        keychain.set(value, forKey: key, withAccess: .accessibleWhenUnlockedThisDeviceOnly)
    }
    
    final func getDataFromKeychain(forKey key: String) -> String? {
        let keychain = KeychainSwift()
        
        return keychain.get(key)
    }
    
    final func removeDataFromKeychain(forKey key: String) -> Bool {
        let keychain = KeychainSwift()
        
        return keychain.delete(key)
    }
}

// MARK: UITextField
extension UITextField {
    
    /// addPadding
    final func addPadding() {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = UITextFieldViewMode.always
    }

}

// MARK: UIColor
extension UIColor {
    
    /// UIColor from hex value
    convenience init(colorWithHexValue value: Int, alpha:CGFloat = 1.0){
        self.init(
            red: CGFloat((value & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((value & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(value & 0x0000FF) / 255.0,
            alpha: alpha
        )
    }
}
