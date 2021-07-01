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
    private let stackView = UIStackView()
    private let titleLabel = UILabel()
    private let subtitleLabel = UILabel()
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
        setupSubtitleLabel()
        setupStackView()
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
    
    public func setupStackView() {
        containerView.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        let height = stackView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 4/3)
        let centerY = stackView.centerYAnchor.constraint(equalTo: centerYAnchor)
        let leading = stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
        let trailing = stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        NSLayoutConstraint.activate([height, centerY, leading, trailing])
        
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
    }
    
    public func setupTitleLabel() {
        stackView.addArrangedSubview(titleLabel)

        
        titleLabel.text = "TitleLabel"
        titleLabel.textColor = .white
        titleLabel.font = .boldSystemFont(ofSize: 20)
    }
    
    public func setupSubtitleLabel() {
        stackView.addArrangedSubview(subtitleLabel)
        
        subtitleLabel.text = "subtitleLabel"
        subtitleLabel.textColor = .white
        subtitleLabel.font = .boldSystemFont(ofSize: 15)
    }
    
    
}
