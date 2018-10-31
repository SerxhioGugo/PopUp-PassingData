//
//  ReusablePopup.swift
//  PopUp&PassingData
//
//  Created by Serxhio Gugo on 10/30/18.
//  Copyright © 2018 Serxhio Gugo. All rights reserved.
//

import UIKit

class ReusablePopup: UIViewController {
    
    var showTimePicker: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.gray.withAlphaComponent(0.7)
        setupUI()
    }
    
    
    
    let middleView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 8
        return view
    }()
    
    let selectDateLabel: UILabel = {
        let label = UILabel()
        label.text = "Select Date"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.backgroundColor = .myRedColor
        label.textColor = .white
        
        return label
    }()
    
    let datePicker: UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.backgroundColor = .white
        datePicker.datePickerMode = .date
        return datePicker
    }()
    
    let saveDateButton: UIButton = {
        let button = UIButton()
        button.setTitle("Save Date", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(saveDatePressed(_:)), for: .touchUpInside)
        return button
    }()
    
    private func setupUI(){
        view.add(subview: middleView) { (v, p)  in [
            v.centerXAnchor.constraint(equalTo: p.centerXAnchor),
            v.centerYAnchor.constraint(equalTo: p.centerYAnchor),
            v.heightAnchor.constraint(equalToConstant: 256),
            v.widthAnchor.constraint(equalToConstant: 300)
            ]}
        
        middleView.add(subview: selectDateLabel) { (v, p) in [
            v.topAnchor.constraint(equalTo: p.topAnchor),
            v.leadingAnchor.constraint(equalTo: p.leadingAnchor),
            v.trailingAnchor.constraint(equalTo: p.trailingAnchor),
            v.heightAnchor.constraint(equalToConstant: 50)
            ]}
        
        middleView.add(subview: datePicker) { (v, p) in [
            v.topAnchor.constraint(equalTo: selectDateLabel.bottomAnchor),
            v.leadingAnchor.constraint(equalTo: p.leadingAnchor),
            v.trailingAnchor.constraint(equalTo: p.trailingAnchor),
            v.heightAnchor.constraint(equalTo: middleView.heightAnchor, multiplier: 2/3),
            ]}
        
        middleView.add(subview: saveDateButton) { (v, p) in [
            v.topAnchor.constraint(equalTo: datePicker.bottomAnchor),
            v.leadingAnchor.constraint(equalTo: p.leadingAnchor),
            v.trailingAnchor.constraint(equalTo: p.trailingAnchor),
            v.bottomAnchor.constraint(equalTo: p.bottomAnchor, constant: -10),
            ]}
    }
    
    @objc func saveDatePressed(_ sender:UIButton) {
        print("save date pressed")
        dismiss(animated: true)
    }
    
}
