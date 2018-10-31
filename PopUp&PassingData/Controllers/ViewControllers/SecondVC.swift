//
//  SecondVC.swift
//  PopUp&PassingData
//
//  Created by Serxhio Gugo on 10/30/18.
//  Copyright © 2018 Serxhio Gugo. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        setupUI()
        
    }
    
    let showDateLabel: UILabel = {
        let label = UILabel()
        label.text = "December, 23 2019"
        label.font = UIFont.systemFont(ofSize: 23)
        label.textAlignment = .center
        label.backgroundColor = .white
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    let selectDateButton : UIButton = {
        let button = UIButton()
        button.setTitleColor(.blue, for: .normal)
        button.setTitle("Select Date", for: .normal)
        button.addTarget(self, action: #selector(selectDatePressed(_:)), for: .touchUpInside)
        return button
    }()
    
    
    private func setupUI(){
        view.add(subview: showDateLabel) { (v, p) in [
            v.leadingAnchor.constraint(equalTo: p.leadingAnchor, constant: 20),
            v.topAnchor.constraint(equalTo: p.safeAreaLayoutGuide.topAnchor, constant: 10),
            v.heightAnchor.constraint(equalToConstant: 60),
            v.widthAnchor.constraint(equalTo: p.widthAnchor, multiplier: 0.5)
            ]}
        
        view.add(subview: selectDateButton) { (v, p) in [
            v.topAnchor.constraint(equalTo: showDateLabel.topAnchor),
            v.trailingAnchor.constraint(equalTo: p.trailingAnchor, constant: 10),
            v.heightAnchor.constraint(equalToConstant: 60),
            v.widthAnchor.constraint(equalToConstant: 150)
            ]}
    }
    
    @objc func selectDatePressed(_ sender: UIButton) {
        print("select date pressed")
        
        let popupVC = ReusablePopup()
        popupVC.modalPresentationStyle = .overCurrentContext
        popupVC.modalTransitionStyle = .crossDissolve
        self.present(popupVC, animated: true, completion: nil)
    }
}
