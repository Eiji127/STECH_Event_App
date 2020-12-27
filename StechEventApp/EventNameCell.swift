//
//  EventNameCell.swift
//  StechEventApp
//
//  Created by 白数叡司 on 2020/12/27.
//

import UIKit

class EventNameCell: UICollectionViewCell {
    private let eventName: UILabel = {
        let label = UILabel()
        label.text = "イベント名: 新宿飲み会!!"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    private let captionTextView: UITextView = {
        let tx = UITextView()
        tx.font = UIFont.boldSystemFont(ofSize: 12)
        tx.backgroundColor = .red
        tx.text = "このイベントはみんなで恵比寿に集まって飲み会をするものです。皆さんの参加おまちしております！！"
        return tx
    }()
    
    lazy var infoTextField: UITextField = {
        let tf = UITextField()
        tf.borderStyle = .none
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.textAlignment = .left
        tf.textColor = .twitterBlue
        let textAttributes: [NSAttributedString.Key : Any] = [
                    .font : UIFont.systemFont(ofSize: 12),
                    .foregroundColor : UIColor.gray,
                ]
        tf.attributedText = NSAttributedString(string: "このイベントはみんなで恵比寿に集まって飲み会をするものです。皆さんの参加おまちしております！！", attributes: textAttributes)
        return tf
    }()
    
    private let eventImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "Image")
        imageView.setDimensions(width: 350, height: 300)
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.backgroundColor = .white
        return imageView
    }()
    
    private let underlineView: UIView = {
        let line = UIView()
        line.backgroundColor = .systemGroupedBackground
        return line
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let stack = UIStackView(arrangedSubviews: [eventName, infoTextField])
        stack.axis = .vertical
        stack.distribution = .fillProportionally
        stack.spacing = 4
        
        addSubview(stack)
        stack.anchor(top: topAnchor, left: leftAnchor, right: rightAnchor, paddingTop: 10, paddingLeft: 5, paddingRight: 5)
        
        
        addSubview(eventImageView)
        eventImageView.anchor(top: stack.bottomAnchor, left: leftAnchor, paddingTop: 5, paddingLeft: 5, width: frame.width, height: frame.height - 50)
        
        addSubview(underlineView)
        underlineView.anchor(top: eventImageView.bottomAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor,paddingTop: 10, paddingLeft: 5, paddingRight: 5, height: 3)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
