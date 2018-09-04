//
//  ViewController.swift
//  NoStoryboardTutorial
//
//  Created by admin on 9/4/18.
//  Copyright © 2018 cuongnv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var headerView: UIView!
    var titleLabel: UILabel!
    var btnTranstition: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        headerView = UIView()
        headerView.backgroundColor = UIColor.red
        self.view.addSubview(headerView)
        
        btnTranstition = UIButton()
        btnTranstition.setTitle("Click Me", for: .normal)
        btnTranstition.backgroundColor = .green
        btnTranstition.addTarget(self, action: #selector(handleTapped(sender:)), for: .touchUpInside)
        self.view.addSubview(btnTranstition)
        
        titleLabel = UILabel()
        titleLabel.text = "Nguyen Van Cuong"
        titleLabel.textAlignment = .center
        titleLabel.backgroundColor = .blue
        titleLabel.font = UIFont.init(name: titleLabel.font.fontName, size: 20)
        headerView.addSubview(titleLabel)
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        headerView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        headerView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        headerView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.5).isActive = true
        
        btnTranstition.translatesAutoresizingMaskIntoConstraints = false
        btnTranstition.topAnchor.constraint(equalTo: headerView.bottomAnchor).isActive = true
        btnTranstition.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        btnTranstition.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        btnTranstition.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: headerView.centerXAnchor).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: headerView.bottomAnchor).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: headerView.widthAnchor).isActive = true
        titleLabel.heightAnchor.constraint(equalTo: headerView.heightAnchor, multiplier: 0.5).isActive = true
    }
    
    @objc func handleTapped(sender: UIButton) {
        let secondViewController: UIViewController = SecondViewController()
        self.present(secondViewController, animated: true, completion: nil)
    }

}

