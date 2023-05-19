//
//  ViewController.swift
//  MediumDepInversionExample
//
//  Created by Fabrício Silva Carvalhal on 19/05/23.
//

import UIKit
import FrameworkA
import FrameworkB

class ViewController: UIViewController {
    
    private lazy var stackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [buttonA, buttonB])
        view.axis = .vertical
        view.spacing = 16
        view.alignment = .fill
        return view
    }()
    
    private var buttonA: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemGreen
        button.setTitle("Framework A", for: .normal)
        return button
    }()
    
    private var buttonB: UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        button.setTitle("Framework B", for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive =  true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive =  true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive =  true
        
        buttonA.addAction(UIAction(handler: { [weak self] _ in
            self?
                .navigationController?
                .pushViewController(FrameworkAMainViewController(), animated: true)
        }), for: .touchUpInside)
        
        buttonB.addAction(UIAction(handler: { [weak self] _ in
            self?
                .navigationController?
                .pushViewController(FrameworkBMainViewController(), animated: true)
        }), for: .touchUpInside)
    }
    
    
}

