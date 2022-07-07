//
//  UIViewControllerExtensions.swift
//  sideMenuAnimation
//
//  Created by Ali Hammoud on 22/04/2022.
//

import UIKit

extension UIViewController {

    func addChildVC(_ vc: UIViewController) {
        self.addChild(vc)
        self.view.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    
    
}
