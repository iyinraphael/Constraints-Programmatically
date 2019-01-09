//
//  ViewController.swift
//  Constraint Programmatically
//
//  Created by Iyin Raphael on 1/8/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let greenSquare = UIView()
        greenSquare.translatesAutoresizingMaskIntoConstraints = false
        greenSquare.backgroundColor = .green
        view.addSubview(greenSquare)
        
        let widthConstraint = NSLayoutConstraint(item: greenSquare,
                                                 attribute: .width,
                                                 relatedBy: .equal,
                                                 toItem: nil,
                                                 attribute: .notAnAttribute,
                                                 multiplier: 1.0,
                                                 constant: 200.0)
        
        let heightConstraint = NSLayoutConstraint(item: greenSquare,
                                                  attribute: .height,
                                                  relatedBy: .equal,
                                                  toItem: greenSquare,
                                                  attribute: .width,
                                                  multiplier: 1.0,
                                                  constant: 0.0)
        
        let centerYContraint = NSLayoutConstraint(item: greenSquare,
                                                  attribute: .centerY,
                                                  relatedBy: .equal,
                                                  toItem: view,
                                                  attribute: .centerY,
                                                  multiplier: 1.0,
                                                  constant: 0.0)
        
        let centerXContraint = NSLayoutConstraint(item: greenSquare,
                                                  attribute: .centerX,
                                                  relatedBy: .equal,
                                                  toItem: view,
                                                  attribute: .centerX,
                                                  multiplier: 1.0,
                                                  constant: 0.0)
        
        NSLayoutConstraint.activate([heightConstraint, widthConstraint, centerXContraint, centerYContraint])
        
        let purpleSquare = UIView()
        purpleSquare.translatesAutoresizingMaskIntoConstraints = false
        purpleSquare.backgroundColor = .purple
        view.addSubview(purpleSquare)
        
        
        let purpleHeight = NSLayoutConstraint(item: purpleSquare,
                                              attribute: .height,
                                              relatedBy: .equal,
                                              toItem: nil,
                                              attribute: .notAnAttribute,
                                              multiplier: 1.0,
                                              constant: 200)
        
        let purpleWidth = NSLayoutConstraint(item: purpleSquare,
                                             attribute: .width,
                                             relatedBy: .equal,
                                             toItem: purpleSquare,
                                             attribute: .height,
                                             multiplier: 1.0,
                                             constant: 0.0)
        
        let purpleTop = NSLayoutConstraint(item: purpleSquare,
                                               attribute: .top,
                                               relatedBy: .equal,
                                               toItem: greenSquare,
                                               attribute: .bottom,
                                               multiplier: 1.0,
                                               constant: 10.0)
        
        let purpleButtom = NSLayoutConstraint(item: view,
                                               attribute: .bottom,
                                               relatedBy: .equal,
                                               toItem: purpleSquare,
                                               attribute: .bottom,
                                               multiplier: 1.0,
                                               constant: 10.0)
        
        let purpleCentreX = NSLayoutConstraint(item: purpleSquare,
                                               attribute: .centerX,
                                               relatedBy: .equal,
                                               toItem: view,
                                               attribute: .centerX,
                                               multiplier: 1.0,
                                               constant: 0.0)
        
        
        NSLayoutConstraint.activate([purpleHeight, purpleWidth, purpleTop, purpleButtom, purpleCentreX])
        
    }


}

