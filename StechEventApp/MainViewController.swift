//
//  MainViewController.swift
//  StechEventApp
//
//  Created by 白数叡司 on 2020/12/27.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - Properties
    
    let textLabel: UILabel = {
        let label = UILabel()
        label.text = "お腹へった"
        return label
    }()
    
    let presentButton: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(presentVC), for: .touchUpInside)
        button.backgroundColor = .red
        return button
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(presentButton)
        presentButton.anchor(top: view.topAnchor, left: view.leftAnchor, paddingTop: 200, paddingLeft: 50, width: 200, height: 100)
        
    }
    
    @objc func presentVC() {
        present(SubViewController(), animated: true, completion: nil)
    }
}

