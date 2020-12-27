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
        label.font = UIFont.boldSystemFont(ofSize: 12)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(eventName)
        eventName.anchor(top: topAnchor, left: leftAnchor, paddingTop: 5, paddingLeft: 5)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
