//
//  SecondViewController.swift
//  HomeWork6
//
//  Created by Chinara on 5/1/23.
//

import UIKit

class RegisterViewController: UIViewController {
    
    private let topImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "image")
        return image
    }()
    
    private let welcomelabel: UILabel = {
        let label = UILabel()
        label.text = "Register"
        label.textColor = .white
        label.font = label.font.withSize(28)
        return label
    }()
    
    private let createLabel: UILabel = {
        let label = UILabel()
        label.text = "Create a new account"
        label.textColor = .white
        label.font = UIFont(name: "Poppins", size: 20)
        return label
    }()
    
    private let usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "Username"
        label.textColor = .white
        label.font = UIFont(name: "Poppins", size: 20)
        return label
    }()
    
    private let userTextField: UITextField = {
        let tf = UITextField()
        tf.backgroundColor = .white
        tf.layer.cornerRadius = 6
        tf.placeholder = "username"
        return tf
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
    
    private let mobilelLabel: UILabel = {
        let label = UILabel()
        label.text = "Mobile number"
        label.textColor = .white
        label.font = UIFont(name: "Poppins", size: 18)
        return label
    }()
    private let mobileTextField: UITextField = {
        let tf = UITextField()
        tf.backgroundColor = .white
        tf.layer.cornerRadius = 6
        tf.placeholder = "Mobile number"
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
    
    private let loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 22
        button.setTitle("Login", for: .normal)
        return button
    }()
    
    private let eyeButton: UIButton = {
        let button = UIButton()
        button.tintColor = #colorLiteral(red: 0.8110429645, green: 0.8110429049, blue: 0.8110428452, alpha: 1)
        button.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        addUI()
        uiUpdate()
        actionUI()
    }
    
    func addUI() {
        view.addSubview(welcomelabel)
        view.addSubview(createLabel)
        view.addSubview(usernameLabel)
        view.addSubview(userTextField)
        view.addSubview(emailLabel)
        view.addSubview(emailTextField)
        view.addSubview(mobilelLabel)
        view.addSubview(mobileTextField)
        view.addSubview(passwordlLabel)
        view.addSubview(passwordlTextField)
        view.addSubview(loginButton)
        view.addSubview(topImage)
        view.addSubview(eyeButton)
    }
    
    func uiUpdate() {
        topImage.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.trailing.leading.equalToSuperview()
            make.height.equalTo(200)
        }
        welcomelabel.snp.makeConstraints { make in
            make.top.equalTo(topImage.snp.bottom)
            make.centerX.equalToSuperview()
        }
        
        createLabel.snp.makeConstraints { make in
            make.top.equalTo(welcomelabel.snp.bottom).offset(3)
            make.centerX.equalToSuperview()
        }
        
        usernameLabel.snp.makeConstraints { make in
            make.top.equalTo(createLabel.snp.bottom).offset(30)
            make.leading.equalToSuperview().offset(30)
        }
        userTextField.snp.makeConstraints { make in
            make.top.equalTo(usernameLabel.snp.bottom).offset(6)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(userTextField.snp.bottom).offset(8)
            make.leading.equalToSuperview().offset(30)
        }
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(6)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        mobilelLabel.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(8)
            make.leading.equalToSuperview().offset(30)
        }
        mobileTextField.snp.makeConstraints { make in
            make.top.equalTo(mobilelLabel.snp.bottom).offset(6)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        
        passwordlLabel.snp.makeConstraints { make in
            make.top.equalTo(mobileTextField.snp.bottom).offset(8)
            make.leading.equalToSuperview().offset(30)
        }
        passwordlTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordlLabel.snp.bottom).offset(6)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        eyeButton.snp.makeConstraints { make in
            make.top.equalTo(passwordlTextField.snp.top).offset(12)
            make.trailing.equalTo(passwordlTextField.snp.trailing).offset(-12)
        }
        
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordlTextField.snp.bottom).offset(28)
            make.leading.trailing.equalToSuperview().inset(40)
            make.height.equalTo(48)
        }
    }
    func actionUI() {
        loginButton.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
        
        eyeButton.addTarget(self, action: #selector(eyePressed), for: .touchUpInside)
        
    }
    @objc func loginTapped() {
        let user = userTextField.checkTextfield()
        let email = emailTextField.checkTextfield()
        let mobil = mobileTextField.checkTextfield()
        let password = passwordlTextField.checkTextfield()
        if user && email && mobil && password {
            let vc = ForgotViewController()
            vc.email = emailTextField.text
            navigationController?.pushViewController(vc, animated: true)
        }
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
    
    
}
