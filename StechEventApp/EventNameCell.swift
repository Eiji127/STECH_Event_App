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
        label.text = "みんなでFISHING!!"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    private let eventImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "Image")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.backgroundColor = .white
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(eventName)
        eventName.anchor(top: topAnchor, left: leftAnchor, paddingTop: 5, paddingLeft: 5)
        
        addSubview(eventImageView)
        eventImageView.anchor(top: eventName.bottomAnchor, left: leftAnchor, paddingTop: 5, paddingLeft: 5, width: frame.width, height: frame.height - 25)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
