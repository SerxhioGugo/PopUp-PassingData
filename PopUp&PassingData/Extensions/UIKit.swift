//
//  UIKit.swift
//  PopUp&PassingData
//
//  Created by Serxhio Gugo on 10/30/18.
//  Copyright © 2018 Serxhio Gugo. All rights reserved.
//

import UIKit

extension UIView {
    func add(subview: UIView, createConstraints: (_ view: UIView, _ parent: UIView) -> [NSLayoutConstraint]) {
        addSubview(subview)
        subview.activate(constraints: createConstraints(subview, self))
        
    }
    func activate(constraints: [NSLayoutConstraint]) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(constraints)
    }
}
