//
//  ViewController.swift
//  HomeWork6
//
//  Created by Chinara on 5/1/23.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private let topImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "image")
        return image
    }()
    
    private let welcomelabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome"
        label.textColor = .white
        label.font = label.font.withSize(28)
        return label
    }()
    
    private let loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Login to your account"
        label.textColor = .white
        label.font = UIFont(name: "Poppins", size: 20)
        return label
    }()
    
    private let emailLabel: UILabel = {
        let label = UILabel()
        label.text = "Email"
        label.textColor = .white
        label.font = UIFont(name: "Poppins", size: 18)
        return label
    }()
    
    private let emailTextField: UITextField = {
        let tf = UITextField()
        tf.backgroundColor = .white
        tf.layer.cornerRadius = 6
        tf.placeholder = "email"
        return tf
    }()
    
    private let passwordlLabel: UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.textColor = .white
        label.font = UIFont(name: "Poppins", size: 18)
        return label
    }()
    
    private let passwordlTextField: UITextField = {
        let tf = UITextField()
        tf.backgroundColor = .white
        tf.layer.cornerRadius = 6
        tf.placeholder = "password"
        tf.isSecureTextEntry = true
        return tf
    }()
    
    private let passwordForgotlLabel: UILabel = {
        let label = UILabel()
        label.text = "Forgot Password?"
        label.textColor = .red
        label.font = UIFont(name: "Poppins", size: 18)
        return label
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 22
        button.setTitle("Login", for: .normal)
        return button
    }()
    
    private let haveAccountlLabel: UILabel = {
        let label = UILabel()
        label.text = "Don't have account?"
        label.textColor = .darkGray
        label.font = UIFont(name: "Poppins", size: 16)
        return label
    }()
    
    private let createButton: UIButton = {
        let button = UIButton()
        let color = #colorLiteral(red: 0.8797428608, green: 0.8797428012, blue: 0.8797428608, alpha: 1)
        button.setTitleColor(color, for: .normal)
        button.setTitle("Create now", for: .normal)
        return button
    }()
    
    private let googleImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "google")
        return image
    }()
    
    private let facebookImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "facebook")
        return image
    }()
    
    private let instaImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "instagram")
        return image
    }()
    
    private let eyeButton: UIButton = {
        let button = UIButton()
        button.tintColor = #colorLiteral(red: 0.8110429645, green: 0.8110429049, blue: 0.8110428452, alpha: 1)
        button.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        return button
    }()
    
    //    let image = UIImage(systemName: "eye.slash.fill")
    //    eyeButton.setImage(image, for: .normal)
    //    eyeButton.translatesAutoresizingMaskIntoConstraints = false
    //    view.addSubview(eyeButton)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        addUI()
        uiUpdate()
        actionUI()
    }
    
    func addUI() {
        view.addSubview(welcomelabel)
        view.addSubview(loginLabel)
        view.addSubview(emailLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordlLabel)
        view.addSubview(passwordlTextField)
        view.addSubview(passwordForgotlLabel)
        view.addSubview(loginButton)
        view.addSubview(haveAccountlLabel)
        view.addSubview(createButton)
        view.addSubview(topImage)
        view.addSubview(googleImage)
        view.addSubview(facebookImage)
        view.addSubview(instaImage)
        view.addSubview(eyeButton)
    }
    
    func uiUpdate() {
        topImage.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.trailing.leading.equalToSuperview()
            make.height.equalTo(200)
        }
        welcomelabel.snp.makeConstraints { make in
            make.top.equalTo(topImage.snp.bottom).offset(51)
            make.centerX.equalToSuperview()
        }
        
        loginLabel.snp.makeConstraints { make in
            make.top.equalTo(welcomelabel.snp.bottom).offset(3)
            make.centerX.equalToSuperview()
        }
        
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(loginLabel.snp.bottom).offset(30)
            make.leading.equalToSuperview().offset(30)
        }
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(8)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        passwordlLabel.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(8)
            make.leading.equalToSuperview().offset(30)
        }
        passwordlTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordlLabel.snp.bottom).offset(8)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        eyeButton.snp.makeConstraints { make in
            make.top.equalTo(passwordlTextField.snp.top).offset(12)
            make.trailing.equalTo(passwordlTextField.snp.trailing).offset(-12)
        }
        passwordForgotlLabel.snp.makeConstraints { make in
            make.top.equalTo(passwordlTextField.snp.bottom).offset(7)
            make.leading.equalToSuperview().offset(184)
        }
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordForgotlLabel.snp.bottom).offset(28)
            make.leading.trailing.equalToSuperview().inset(40)
            make.height.equalTo(48)
        }
        haveAccountlLabel.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(14)
            make.leading.equalToSuperview().offset(50)
        }
        createButton.snp.makeConstraints { make in
            make.leading.equalTo(haveAccountlLabel.snp.trailing).offset(7)
            make.top.equalTo(loginButton.snp.bottom).offset(7)
        }
        facebookImage.snp.makeConstraints { make in
            make.top.equalTo(haveAccountlLabel.snp.bottom).offset(50)
            make.centerX.equalToSuperview()
        }
        googleImage.snp.makeConstraints { make in
            make.top.equalTo(haveAccountlLabel.snp.bottom).offset(50)
            make.trailing.equalTo(facebookImage.snp.leading).offset(-43)
        }
        instaImage.snp.makeConstraints { make in
            make.top.equalTo(haveAccountlLabel.snp.bottom).offset(50)
            make.leading.equalTo(facebookImage.snp.trailing).offset(43)
        }
        
    }
    func actionUI() {
        loginButton.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
        
        eyeButton.addTarget(self, action: #selector(eyePressed), for: .touchUpInside)
        createButton.addTarget(self, action: #selector(createTapped), for: .touchUpInside)
    }
    @objc func loginTapped() {
        let _ = emailTextField.checkTextfield()
        let _ = passwordlTextField.checkTextfield()
    }
    
    @objc func eyePressed(sender: UIButton) {
        let eye = UIImage(systemName: "eye.slash.fill")
        let eyeFill = UIImage(systemName: "eye.fill")
        
        if sender.imageView?.image == eye {
            sender.setImage(eyeFill, for: .normal)
            passwordlTextField.isSecureTextEntry = false
        } else {
            sender.setImage(eye, for: .normal)
            passwordlTextField.isSecureTextEntry = true
        }
        
    }
    
    @objc func createTapped(sender: UIButton) {
        let secondViewController = RegisterViewController()
        navigationController?.pushViewController(secondViewController, animated: true)
        
    }
}
