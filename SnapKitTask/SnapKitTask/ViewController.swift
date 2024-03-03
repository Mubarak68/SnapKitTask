//
//  ViewController.swift
//  SnapKitTask
//
//  Created by Mubarak Aloraifan on 27/02/2024.
//

import UIKit
import SnapKit
class ViewController: UIViewController {

    let photoProfile = UIImageView()
    let verProfile = UIImageView()
    let name = UILabel()
    let userName = UILabel()
    let bioProfile = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        view.addSubview(photoProfile)
        view.addSubview(verProfile)
        view.addSubview(name)
        view.addSubview(userName)
        view.addSubview(bioProfile)
        
        setupUI()
        applyConstraints()
    }
    
    
    func setupUI() {
        photoProfile.image = UIImage(named: "kfh")
        verProfile.image = UIImage(named: "ver")
        name.text = "Kuwait Finanace House"
        userName.text = "kfhgroup"
        bioProfile.text = "Best Islamic Bank in the world.\nKuwait Finanace House.\nAlo Baitk 1803333."
        
        name.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        
        photoProfile.layer.cornerRadius = 37.5
        photoProfile.clipsToBounds = true
        
        
    }

    func applyConstraints(){
        photoProfile.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.width.height.equalTo(75)
        }
        
        verProfile.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(70)
            make.trailing.equalToSuperview().offset(-70)
            make.width.height.equalTo(25)
        }
        name.snp.makeConstraints { make in
            make.centerY.equalTo(photoProfile.snp.centerY)
            make.leading.equalToSuperview().offset(20)
        }
        userName.snp.makeConstraints { make in
            make.bottom.equalTo(name.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(20)
        }
       
        bioProfile.snp.makeConstraints { make in
            make.bottom.equalTo(userName.snp.bottom).offset(40)
            make.leading.equalToSuperview().offset(20)
        }
           
    }
}

