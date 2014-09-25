//
//  UIImage+Extension.swift
//  FlatButtons
//
//  Created by Marcin Pędzimąż on 24.09.2014.
//  Copyright (c) 2014 Marcin Pedzimaz. All rights reserved.
//

import UIKit

extension UIImage {

    class func imageWithColor(color:UIColor?) -> UIImage! {
    
        let rect = CGRectMake(0.0, 0.0, 1.0, 1.0);
        
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0)
        
        let context = UIGraphicsGetCurrentContext();
        
        if let color = color {
            
            color.setFill()
        }
        else {
            
            UIColor.whiteColor().setFill()
        }
        
        CGContextFillRect(context, rect);
        
        let image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        return image;
    }
    
}
