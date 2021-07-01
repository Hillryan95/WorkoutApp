//
//  ViewController.swift
//  WorkoutApp
//
//  Created by Ryan Hill on 18/06/2021.
//

import UIKit

//final keywork means no other class can inherit from this class so it can only be used as defined
final class WorkoutVC: UIViewController {
    
    var safeArea: UILayoutGuide!
    let cardView = CardView()
    //    var containerGradient: CAGradientLayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //setupView created to handle all the setup. viewDidLoad only calls that function
        setupView()
    }
    
    private func setupView() {
        safeArea = view.layoutMarginsGuide
        view.backgroundColor = .white
        setupNavigation()
        setupTableView()
        setupContainerView()
    }
    
    private func setupNavigation() {
        navigationItem.title = "Workout"
    }
    
    private func setupTableView() {
        
    }
    
    private func setupContainerView() {
        view.addSubview(cardView)
        
        //translatesAutoresizingMaskIntoConstraints needs to be false to allow you to set your own constraints. If set to true, constraints will match that of the view.
        cardView.translatesAutoresizingMaskIntoConstraints = false
        let top = cardView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant:15)
        let leading = cardView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor)
        let trailing = cardView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor)
        let height = cardView.heightAnchor.constraint(equalToConstant: 150)
        //activate does the same thing as clicking the red lines on the auto constraint part in storyboard mode
        NSLayoutConstraint.activate([top, leading, trailing, height])
        
    }
    
}

