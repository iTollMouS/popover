//
//  ViewController.swift
//  popover
//
//  Created by Tariq Almazyad on 4/4/20.
//  Copyright © 2020 ARMobileApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let showPopoverView : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Show Popover View", for: .normal)
        button.frame = CGRect(x: 100 , y: 200, width: 200, height: 40)
        button.addTarget(self, action: #selector(handleClickMe), for: .touchUpInside)
        button.layer.cornerRadius = 20
        return button
    }()
    let dismissPopoverView : UIButton = {
           let button = UIButton(type: .system)
           button.setTitle("Hide Popover View", for: .normal)
           button.frame = CGRect(x: 150 , y: 400, width: 100, height: 40)
           button.addTarget(self, action: #selector(handleClickMee), for: .touchUpInside)
           button.layer.cornerRadius = 20
           return button
       }()
     let popoverView : UIView = {
        let popoverView = UIView()
        popoverView.layer.cornerRadius = 30
        return popoverView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .white
        view.addSubview(showPopoverView)
    }
    
    @objc func handleClickMe(){
        self.dismissPopoverView.isHidden = false
        popoverView.frame = CGRect(x: self.view.center.x, y: self.view.center.y, width: 0, height: 0)
        popoverView.addSubview(dismissPopoverView)
        popoverView.alpha = 0
        UIView.animate(withDuration: 0.5) {
            self.popoverView.frame = CGRect(x: self.view.center.x, y: self.view.center.y, width: 300, height: 300)
            self.popoverView.center = self.view.center
            self.popoverView.alpha = 1
            self.popoverView.backgroundColor = .green
            self.view.addSubview(self.popoverView)
        }
        dismissPopoverView.anchor(top: popoverView.topAnchor, left: popoverView.leftAnchor,
                                  bottom: nil, right: nil, paddingTop: 30, paddingLeft: 30,
                                  paddingBottom: 0, paddingRight: 0, width: 0, height: 40)
    }
    
    @objc func handleClickMee(){
        UIView.animate(withDuration: 0.5, animations: {
            self.popoverView.frame = CGRect(x:  self.view.center.x, y: self.view.center.y, width: 0, height: 0)
            self.dismissPopoverView.isHidden = true
            
        },
            completion: {(value: Bool) in
                        self.popoverView.removeFromSuperview()
        })
    }
    
 


}

