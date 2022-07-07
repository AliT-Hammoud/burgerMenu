//
//  ContainerViewController.swift
//  sideMenuAnimation
//
//  Created by Ali Hammoud on 22/04/2022.
//

import UIKit

class ContainerViewController: UIViewController {
    
    enum MenuState {
        case open
        case closed
    }

    private var menuState = MenuState.closed
    
    let menuVC = MenuViewController()
    let homeVC = HomeViewController()
    var navVC: UINavigationController?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        self.addChilds()
        homeVC.delegate = self
    }

    private func addChilds() {
        addChildVC(menuVC)
        let navVC = UINavigationController(rootViewController: homeVC)
        addChildVC(navVC)
        self.navVC = navVC
    }

}

extension ContainerViewController: HomeViewControllerDelegate {
    func didTapMenuButton() {

        switch menuState {
        case .open:
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut) {
                self.navVC?.view.frame.origin.x = 0
            } completion: { [weak self] done in
                if done {
                    self?.menuState = .closed
                }
            }

        case .closed:
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut) {
                self.navVC?.view.frame.origin.x = self.homeVC.view.frame.size.width-100
            } completion: { [weak self] done in
                if done {
                    self?.menuState = .open
                }
            }
        }
        
    }
}
