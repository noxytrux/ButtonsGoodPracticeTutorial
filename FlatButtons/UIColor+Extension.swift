//
//  UIColor+Extension.swift
//  FlatButtons
//
//  Created by Marcin Pędzimąż on 24.09.2014.
//  Copyright (c) 2014 Marcin Pedzimaz. All rights reserved.
//

import UIKit

extension UIColor {

    class func colorWithHex(hexString: String?, alpha: CGFloat = 1.0) -> UIColor? {
        
        if let hexString = hexString {
        
            var error : NSError? = nil
            
            let regexp = NSRegularExpression(pattern: "\\A#[0-9a-f]{6}\\z",
                options: .CaseInsensitive,
                error: &error)
            
            let count = regexp.numberOfMatchesInString(hexString,
                options: .ReportProgress,
                range: NSMakeRange(0, countElements(hexString)))
           
            if count != 1 {
            
                return nil
            }
            
            var rgbValue : UInt32 = 0
            
            let scanner = NSScanner(string: hexString)
            
            scanner.scanLocation = 1
            scanner.scanHexInt(&rgbValue)
            
            let red   = CGFloat( (rgbValue & 0xFF0000) >> 16) / 255.0
            let green = CGFloat( (rgbValue & 0xFF00) >> 8) / 255.0
            let blue  = CGFloat( (rgbValue & 0xFF) ) / 255.0
        
            return UIColor(red: red, green: green, blue: blue, alpha: alpha)
        }

        return nil
    }

}
