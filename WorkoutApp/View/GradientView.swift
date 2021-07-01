//
//  GradientView.swift
//  WorkoutApp
//
//  Created by Ryan Hill on 22/06/2021.
//

import Foundation
import UIKit

class GradientView: UIView {
    override public class var layerClass: AnyClass {
       return CAGradientLayer.classForCoder()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let gradientLayer = layer as! CAGradientLayer
        gradientLayer.colors = gradientColours
    }
}
