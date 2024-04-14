//
//  ViewController.swift
//  ximin_eunha
//
//  Created by 박지민 on 4/14/24.
//

import UIKit
import SnapKit
import Then

class ViewController: UIViewController {
    let img = UIImageView().then {
        $0.image = .eunha
    }
    let titleLabel = UILabel().then {
        $0.font = .boldSystemFont(ofSize: 24)
        $0.text = "이제 운동을 시작해 보세요!"
    }
    let label = UILabel().then {
        $0.textAlignment = .center
        $0.text = "마음가짐 서비스를 통해 규칙적인 생활을\n실천해 보세요!"
        $0.numberOfLines = 2
    }
    let googleButton = LoginButton(icon: .googleIcon, text: "구글로 로그인")
    let kakaoButton = LoginButton(icon: .kakaoIcon, text: "카카오로 로그인")
    let appleButton = LoginButton(icon: .appleIcon, text: "애플로 로그인")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        view.addSubview(img)
        view.addSubview(titleLabel)
        view.addSubview(label)
        
        view.addSubview(googleButton)
        view.addSubview(kakaoButton)
        view.addSubview(appleButton)
        
        
        googleButton.snp.makeConstraints {
            $0.top.equalTo(label.snp.bottom).offset(68)
            $0.left.right.equalToSuperview()
        }
        kakaoButton.snp.makeConstraints{
            $0.top.equalTo(googleButton.snp.bottom).offset(16)
            $0.left.right.equalToSuperview()
        }
        appleButton.snp.makeConstraints{
            $0.top.equalTo(kakaoButton.snp.bottom).offset(16)
            $0.left.right.equalToSuperview()
        }
        
        label.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(10)
            $0.centerX.equalToSuperview()
        }
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(img.snp.bottom).offset(30)
            $0.centerX.equalToSuperview()
        }
        img.snp.makeConstraints {
            $0.top.equalToSuperview().offset(105)
            $0.centerX.equalToSuperview()
            $0.width.height.equalTo(280)
        }
    }


}

