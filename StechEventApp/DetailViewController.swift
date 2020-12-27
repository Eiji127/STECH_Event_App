//
//  DetailViewController.swift
//  StechEventApp
//
//  Created by 白数叡司 on 2020/12/27.
//

import UIKit

class DetailViewController: UIViewController {
    
    private let eventName: UILabel = {
        let label = UILabel()
        label.text = "新宿飲み会!!"
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    
    lazy var bookedButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.borderColor = UIColor.twitterBlue.cgColor
        button.layer.borderWidth = 1.25
        button.setTitle("予約", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button.titleLabel?.tintColor = .twitterBlue
        button.addTarget(self, action: #selector(bookEvent), for: .touchUpInside)
        return button
    }()
    
    lazy var infoTextField: UITextField = {
        let tf = UITextField()
        tf.borderStyle = .none
        tf.textAlignment = .left
        tf.textColor = .twitterBlue
        let textAttributes: [NSAttributedString.Key : Any] = [
            .font : UIFont.systemFont(ofSize: 18),
            .foregroundColor : UIColor.gray,
        ]
        tf.attributedText = NSAttributedString(string: "このイベントはみんなで恵比寿に集まって飲み会をするものです。皆さんの参加おまちしております！！", attributes: textAttributes)
        return tf
    }()
    
    private let eventImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "Image")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.setDimensions(width: 350, height: 300)
        imageView.backgroundColor = .white
        return imageView
    }()
    
    private let underlineView: UIView = {
        let line = UIView()
        line.backgroundColor = .systemBackground
        return line
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        navigationController?.navigationBar.tintColor = .white
        
        let stack = UIStackView(arrangedSubviews: [eventName, infoTextField])
        stack.axis = .vertical
        stack.distribution = .fillProportionally
        stack.spacing = 4
        
        view.addSubview(stack)
        stack.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 10, paddingLeft: 5, paddingRight: 5)
        
        
        view.addSubview(eventImageView)
        eventImageView.anchor(top: stack.bottomAnchor, left: view.leftAnchor, paddingTop: 5, paddingLeft: 5, width: view.frame.width, height: view.frame.height - 50)
        
        view.addSubview(underlineView)
        underlineView.anchor(top: eventImageView.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 30, paddingLeft: 5, paddingRight: 5, height: 2)
        
        view.addSubview(bookedButton)
        bookedButton.anchor(top: underlineView.bottomAnchor, left: view.leftAnchor, paddingTop: 30, paddingLeft: 70)
        bookedButton.setDimensions(width: 200, height: 50)
        bookedButton.layer.cornerRadius = 50 / 2
        
        
    }
    
    @objc func bookEvent() {
        print("DEBUG: 予約するよーー")
    }
    
    
    
}
