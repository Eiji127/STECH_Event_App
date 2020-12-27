//
//  MainViewHeader.swift
//  StechEventApp
//
//  Created by 白数叡司 on 2020/12/27.
//

import UIKit

class MainViewHeader: UICollectionReusableView {
    
    // MARK: - Properties
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemRed
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.text = "開催予定のイベント"
        return label
    }()
    
    private let categoryLabel: UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.text = "UPCOMING EVENTS"
        return label
    }()
    
    private let flagImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.image = #imageLiteral(resourceName: "Image-1")
        imageView.setDimensions(width: 40, height: 40)
        imageView.backgroundColor = .white
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let stack = UIStackView(arrangedSubviews: [nameLabel, categoryLabel])
        stack.axis = .vertical
        stack.distribution = .fill
        stack.spacing = 4
        
        let infoStack = UIStackView(arrangedSubviews: [flagImageView, stack])
        infoStack.axis = .horizontal
        infoStack.distribution = .fill
        infoStack.spacing = 4
        
        addSubview(infoStack)
        infoStack.anchor(top: topAnchor, left: leftAnchor, paddingTop: 10, paddingLeft: 10)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func showActionSheet() {
//        delegate?.showActionSheet()
    }
    
}
