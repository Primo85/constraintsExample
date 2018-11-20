//
//  FirstViewController.swift
//  ConstraintsExample
//
//  Created by Przemyslaw Biskup on 20/11/2018.
//  Copyright © 2018 Przemyslaw Biskup. All rights reserved.
//

import UIKit

final class FirstViewController: UIViewController {
    
    lazy var presenter: FirstPresenter = {
        return FirstPresenter(view: self)
    }()
    lazy var router: FirstRouter = {
        return FirstRouter(source: self)
    }()
    
    // view components:
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false // first step VERY IMPORTANT !!!
        return scrollView
    }()
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false // first step VERY IMPORTANT !!!
        imageView.contentMode = .scaleAspectFill
        imageView.image = #imageLiteral(resourceName: "Frog.jpg")
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .blue
        label.textColor = .white
        label.font = .systemFont(ofSize: 20)
        label.text = "scrolluj obrazek"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    private func setUpView() { // cala ta funkcje mozna do extension w innym pliku wrzucic// wedle uznania
        
        self.view.addSubview(scrollView) // second step VERY IMPORTANT !!!
        scrollView.addSubview(imageView)
        self.view.addSubview(titleLabel)
        
        // and third step ... add constraints
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        imageView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        imageView.leftAnchor.constraint(equalTo: scrollView.leftAnchor).isActive = true
        imageView.rightAnchor.constraint(equalTo: scrollView.rightAnchor).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: imageView.image?.size.width ?? 100).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: imageView.image?.size.height ?? 100).isActive = true
        
        
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        
    }
}

extension FirstViewController: FirstViewProtocol {
    
}
