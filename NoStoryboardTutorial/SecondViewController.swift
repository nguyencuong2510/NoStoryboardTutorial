//
//  SecondViewController.swift
//  NoStoryboardTutorial
//
//  Created by admin on 9/4/18.
//  Copyright © 2018 cuongnv. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var secondView: UIView!
    var numberCollectionView: UICollectionView!
//    var numberCollectionViewDataSourceAndDelegate =
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondView = UIView()
        secondView.backgroundColor = .yellow
        self.view.addSubview(secondView)
        
        let layout = UICollectionViewFlowLayout()
        numberCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        numberCollectionView.register(UINib.init(nibName: "NumberCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        numberCollectionView.backgroundColor = .white
        numberCollectionView.dataSource = self
        numberCollectionView.delegate = self
        self.view.addSubview(numberCollectionView)
        
        
        secondView.translatesAutoresizingMaskIntoConstraints = false
        secondView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        secondView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        secondView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        secondView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.5).isActive = true
        
        numberCollectionView.translatesAutoresizingMaskIntoConstraints = false
        numberCollectionView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        numberCollectionView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        numberCollectionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        numberCollectionView.topAnchor.constraint(equalTo: secondView.bottomAnchor).isActive = true
    }
}

extension SecondViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! NumberCollectionViewCell
        cell.backgroundColor = .gray
        cell.title.text = "\(indexPath.row)"
        return cell
    }
}
