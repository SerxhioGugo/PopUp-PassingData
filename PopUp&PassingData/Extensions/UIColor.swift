//
//  UIColor.swift
//  PopUp&PassingData
//
//  Created by Serxhio Gugo on 10/30/18.
//  Copyright © 2018 Serxhio Gugo. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init(red: Int , green: Int, blue: Int) {
        self.init(red: CGFloat(red)/255.0, green: CGFloat(green)/255.0, blue: CGFloat(blue)/255.0 , alpha: 1.0)
    }
    
    //Paste HEX value after 0x
    static var myRedColor: UIColor { return UIColor.init(rgb: 0xe85f75)}
    
    
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue : rgb & 0xFF
        )
    }
}
