//
//  MainViewController.swift
//  StechEventApp
//
//  Created by 白数叡司 on 2020/12/27.
//

import UIKit


private let reuseIdentifier = "EventNameCell"
private let reuseHeaderIdentifier = "ShopInfoHeader"

class MainViewController: UICollectionViewController {
    
    // MARK: - Properties
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - API
    
    
    // MARK: - Helper
    
    func configureUI() {
        
        collectionView.register(EventNameCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        collectionView.backgroundColor = .white
        collectionView.collectionViewLayout = layout()
        
        navigationController?.title = "Shop"
        navigationController?.navigationBar.barTintColor = .red
        navigationController?.navigationBar.titleTextAttributes = [
            .foregroundColor: UIColor.white
        ]
        navigationItem.title = "Gurunavi API"
    }
    
    func layout() -> UICollectionViewCompositionalLayout {
        
        let sectionProvider = { (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            
            
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),heightDimension: .fractionalWidth(1.0))
            
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            
            let containerGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalWidth(1.0))
            
            let containerGroup = NSCollectionLayoutGroup.horizontal(layoutSize: containerGroupSize, subitem: item, count: 1)
            containerGroup.interItemSpacing = NSCollectionLayoutSpacing.fixed(10)
            
            let section = NSCollectionLayoutSection(group: containerGroup)
            section.orthogonalScrollingBehavior = .groupPaging
            section.interGroupSpacing = 10
        
            return section
        }
        
        let config = UICollectionViewCompositionalLayoutConfiguration()
        config.interSectionSpacing = 10
        
        let layout = UICollectionViewCompositionalLayout(sectionProvider: sectionProvider, configuration: config)
        
        return layout
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 10
    }

}

// MARK: - UICollectionViewDelegate/DataSource
extension MainViewController {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! EventNameCell
        return cell
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("DEBUG: Push item..")
    }
}
