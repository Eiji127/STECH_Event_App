//
//  SubViewController.swift
//  StechEventApp
//
//  Created by 白数叡司 on 2020/12/27.
//

import UIKit

class SubViewController: UIViewController {
    
    // MARK: - Properties
    
    let textLabel: UILabel = {
        let label = UILabel()
        label.text = "お腹へった"
        return label
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(textLabel)
        textLabel.anchor(top: view.topAnchor, left: view.leftAnchor, paddingTop: 200, paddingLeft: 50, width: 200, height: 100)
    }
}

