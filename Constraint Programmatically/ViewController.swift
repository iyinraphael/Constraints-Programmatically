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
        let purpleSquare = UIView()
        
        greenSquare.translatesAutoresizingMaskIntoConstraints = false
        purpleSquare.translatesAutoresizingMaskIntoConstraints = false
        
        greenSquare.backgroundColor = .green
        purpleSquare.backgroundColor = .purple
        
        view.addSubview(greenSquare)
        view.addSubview(purpleSquare)
        

        
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
        
        let purpleWidthContraint = NSLayoutConstraint(item: purpleSquare,
                                                      attribute: .width,
                                                      relatedBy: .equal,
                                                      toItem: nil,
                                                      attribute: .notAnAttribute,
                                                      multiplier: 1.0,
                                                      constant: 200.0)
        purpleWidthConstraint = purpleWidthContraint
        
        let purpleHeightContraint = NSLayoutConstraint(item: purpleSquare,
                                                 attribute: .height,
                                                 relatedBy: .equal,
                                                 toItem: purpleSquare,
                                                 attribute: .width,
                                                 multiplier: 1.0,
                                                 constant: 0.0)
        
        let purpleCenterYConstraint = NSLayoutConstraint(item: purpleSquare,
                                                   attribute: .top,
                                                   relatedBy: .greaterThanOrEqual,
                                                   toItem: greenSquare,
                                                   attribute: .bottom,
                                                   multiplier: 1.0,
                                                   constant: 20.0)
        
         purpleCentreYConstraint = purpleCenterYConstraint
        
        let purpleCenterXConstraint = NSLayoutConstraint(item: purpleSquare,
                                                         attribute: .centerX,
                                                         relatedBy: .equal,
                                                         toItem: view,
                                                         attribute: .centerX,
                                                         multiplier: 1.0,
                                                         constant: 0.0)
        
        NSLayoutConstraint.activate([
            heightConstraint,
            widthConstraint,
            centerXContraint,
            centerYContraint,
            purpleWidthContraint,
            purpleHeightContraint,
            purpleCenterYConstraint,
            purpleCenterXConstraint
            ])

    }

    @IBAction func animate(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            self.greenwWidthContraint.constant = 300
            self.greenCentreYContraints.constant = -100
            
            self.purpleCentreYConstraint.constant = 300
            self.view.layoutIfNeeded()
        }
    }
    
    var greenwWidthContraint:NSLayoutConstraint!
    var greenCentreYContraints: NSLayoutConstraint!
    var purpleWidthConstraint: NSLayoutConstraint!
    var purpleCentreYConstraint: NSLayoutConstraint!
    
}

