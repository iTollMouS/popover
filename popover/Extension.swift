//
//  Extension.swift
//  popover
//
//  Created by Tariq Almazyad on 4/4/20.
//  Copyright © 2020 ARMobileApps. All rights reserved.
//


import UIKit

extension UIView{
    func anchor(top: NSLayoutYAxisAnchor?, left: NSLayoutXAxisAnchor?,
                bottom: NSLayoutYAxisAnchor?, right: NSLayoutXAxisAnchor?,
                paddingTop: CGFloat,paddingLeft: CGFloat, paddingBottom:CGFloat,
                paddingRight: CGFloat, width: CGFloat, height: CGFloat){
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        // we made it as - because we wanted to be on the - direction
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
        }
        
        if let right = right {
            self.rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
        }
        
        if width != 0 {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        if height != 0 {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
        
    }
}

