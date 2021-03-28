//
//  ViewController.swift
//  HelloWord
//
//  Created by Gabriel Angelo Dragoni on 27/03/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var blackView: UIView!

    @IBAction func hiddenDidTapped(_ sender: Any) {
        
        UIView.animate(withDuration: 1, animations: {
            self.blackView.transform = CGAffineTransform(rotationAngle: CGFloat.pi).concatenating(CGAffineTransform(scaleX: 0.1, y: 0.1))
        }, completion: { _ in
            self.blackView.isHidden = true
        })
    }
    
    @IBAction func showDidTapped(_ sender: Any) {
        blackView.isHidden = false
        UIView.animate(withDuration: 1, animations: {
            self.blackView.transform = CGAffineTransform(rotationAngle: 0).concatenating(CGAffineTransform(scaleX: 1, y: 1))
        })
    }
}

