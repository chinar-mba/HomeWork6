//
//  ForgotViewController.swift
//  HomeWork6
//
//  Created by Chinara on 5/1/23.
//

import UIKit

class ForgotViewController: UIViewController {
    
    private let topImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "image")
        return image
    }()
    
    private let welcomelabel: UILabel = {
        let label = UILabel()
        label.text = "Forgot password"
        label.textColor = .white
        label.font = label.font.withSize(28)
        return label
    }()
    
    
    private let emailLabel: UILabel = {
        let label = UILabel()
        label.text = "Enter your email"
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
    
    private let chooseLabel: UILabel = {
        let label = UILabel()
        label.text = "Choose another method"
        label.textColor = .lightGray
        label.font = UIFont(name: "Poppins", size: 18)
        return label
    }()
    
    private let needlLabel: UILabel = {
        let label = UILabel()
        label.text = "Need help"
        label.textColor = .white
        label.font = UIFont(name: "Poppins", size: 18)
        return label
    }()
    
    
    private let loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 22
        button.setTitle("Send OTP", for: .normal)
        return button
    }()
    
    private let eyeButton: UIButton = {
        let button = UIButton()
        button.tintColor = #colorLiteral(red: 0.8110429645, green: 0.8110429049, blue: 0.8110428452, alpha: 1)
        button.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        return button
    }()
    
    var email: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        addUI()
        uiUpdate()
        emailTextField.text = email
    }
    
    func addUI() {
        view.addSubview(welcomelabel)
        view.addSubview(emailLabel)
        view.addSubview(emailTextField)
        view.addSubview(chooseLabel)
        view.addSubview(needlLabel)
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
            make.top.equalTo(topImage.snp.bottom).offset(31)
            make.centerX.equalToSuperview()
        }
        
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(welcomelabel.snp.bottom).offset(61)
            make.leading.equalToSuperview().offset(30)
        }
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(4)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        chooseLabel.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(11)
            make.leading.equalToSuperview().offset(30)
        }
        
        needlLabel.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(11)
            make.leading.equalTo(chooseLabel.snp.trailing).offset(18)
        }
        
        
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(needlLabel.snp.bottom).offset(22)
            make.leading.trailing.equalToSuperview().inset(40)
            make.height.equalTo(48)
        }
        
        
    }
    
}
