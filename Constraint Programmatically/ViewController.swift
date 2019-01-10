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
        
        greenwWidthContraint = widthConstraint
        
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
        greenCentreYContraints = centerYContraint
        
        let centerXContraint = NSLayoutConstraint(item: greenSquare,
                                                  attribute: .centerX,
                                                  relatedBy: .equal,
                                                  toItem: view,
                                                  attribute: .centerX,
                                                  multiplier: 1.0,
                                                  constant: 0.0)
        
        NSLayoutConstraint.activate([heightConstraint, widthConstraint, centerXContraint, centerYContraint])

    }

    @IBAction func animate(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            self.greenwWidthContraint.constant = 300
            self.greenCentreYContraints.constant = -100
            self.view.layoutIfNeeded()
        }
    }
    
    var greenwWidthContraint:NSLayoutConstraint!
    var greenCentreYContraints: NSLayoutConstraint!
    
}

