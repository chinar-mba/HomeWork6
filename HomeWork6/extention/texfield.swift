//
//  texfield.swift
//  HomeWork6
//
//  Created by Chinara on 5/1/23.
//

import UIKit

extension UITextField {
    func checkTextfield() -> Bool{
        let placeholder = self.placeholder
        if self.text == "" {
            self.layer.borderColor = UIColor.red.cgColor
            self.layer.borderWidth = 2
            self.placeholder = "Заполните пожалуйста"
            return false
        } else {
            self.layer.borderColor = UIColor.black.cgColor
            self.layer.borderWidth = 2
            self.placeholder = placeholder
            return true
        }
    }
}
