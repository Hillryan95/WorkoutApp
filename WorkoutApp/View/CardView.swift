//
//  CardView.swift
//  WorkoutApp
//
//  Created by Ryan Hill on 22/06/2021.
//

import Foundation
import UIKit

final class CardView: UIView {
    private let containerView = ContainerView()
    private let titleLabel = UILabel()
    private let timeLabel = UILabel()
    private let timeDescriptionLabel = UILabel()
    private let exerciseLabel = UILabel()
    private let exerciseDescriptionLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented.")
    }
    
    private func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: 150).isActive = true
        setupContainerView()
        setupTitleLabel()
    }
    
    private func setupContainerView() {
        addSubview(containerView)
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        let top = containerView.topAnchor.constraint(equalTo: topAnchor)
        let leading = containerView.leadingAnchor.constraint(equalTo: leadingAnchor)
        let bottom = containerView.bottomAnchor.constraint(equalTo: bottomAnchor)
        let trailing = containerView.trailingAnchor.constraint(equalTo: trailingAnchor)
        
        //activate does the same thing as clicking the red lines on the auto constraint part in storyboard mode
        NSLayoutConstraint.activate([top, leading, trailing, bottom])
        
    }
    
    public func setupTitleLabel() {
        addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let height = titleLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/4)
        let leading = titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15)
        let trailing = titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15)
        
        NSLayoutConstraint.activate([height, leading, trailing])
        
        titleLabel.text = "TitleLabel"
        titleLabel.textColor = .white
        titleLabel.shadowColor = .black.withAlphaComponent(0.4)
        titleLabel.shadowOffset = CGSize(width: 1, height: 1)
        titleLabel.font = .boldSystemFont(ofSize: 20)
    }
    
    
}
