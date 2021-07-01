//
//  ContainerView.swift
//  WorkoutApp
//
//  Created by Ryan Hill on 22/06/2021.
//

import Foundation
import UIKit

final class ContainerView: UIView {
    
    var containerGradient: CAGradientLayer?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = .dimmedBlue
        layer.cornerRadius = 10
        clipsToBounds = true
    }
    
    //create and override the size of the subview. Gradients can only be added to subviews
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
    }
    
    private lazy var gradientLayer: CAGradientLayer = {
        let gradient = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = gradientColours
        gradient.startPoint = CGPoint(x: 0, y: 00)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        gradient.cornerRadius = 10
        layer.insertSublayer(gradient, at: 0)
        return gradient
    }()
}
