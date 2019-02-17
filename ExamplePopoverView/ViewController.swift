//
//  ViewController.swift
//  ExamplePopoverView
//
//  Created by Dung on 2/17/19.
//  Copyright © 2019 Dung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btnHidePopover: UIButton!
    @IBOutlet var popoverView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.popoverView.layer.cornerRadius = 20
    }
    
    @IBAction func showDetail(_ sender: Any) {
        self.popoverView.center = self.view.center
        self.btnHidePopover.isHidden = false
        UIView.transition(with: self.view,
                          duration: 0.2,
                          options: [UIView.AnimationOptions.transitionCrossDissolve],
                          animations: {
                            self.view.addSubview(self.popoverView)
                           
        },
                          completion: { (_) in
                            
        })
        
    }
    
    @IBAction func doDone(_ sender: Any) {
        self.btnHidePopover.isHidden = true
        self.popoverView.removeFromSuperview()
    }
    
}

