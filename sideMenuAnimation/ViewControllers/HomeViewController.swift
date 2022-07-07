//
//  HomeViewController.swift
//  sideMenuAnimation
//
//  Created by Ali Hammoud on 22/04/2022.
//

import UIKit

protocol HomeViewControllerDelegate: AnyObject {
    func didTapMenuButton()
}

class HomeViewController: UIViewController {

    weak var delegate: HomeViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        view.backgroundColor = .green
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "list.dash"),
                                                           style: .done,
                                                           target: self,
                                                           action: #selector(didClickLeftBarItem))
    }
    
    @objc private func didClickLeftBarItem() {
        self.delegate?.didTapMenuButton()
    }
     
}
