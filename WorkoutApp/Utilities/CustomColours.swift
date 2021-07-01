//
//  CustomColours.swift
//  WorkoutApp
//
//  Created by Ryan Hill on 21/06/2021.
//

import Foundation
import UIKit

let gradientColours = [
    UIColor(rgb: 0x2193b0).cgColor,
    UIColor(rgb: 0x6dd5ed).cgColor
]

//extension adds values to a class that's already been created
extension UIColor {
    class var dimmedBlue: UIColor {
        return UIColor(rgb: 0x365265)
    }
    
    //initialiser to convert hex numbers and makes it possible to use 0xFF etc
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")

        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }

    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
    
}






   
