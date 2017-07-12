//
//  KSUITheme.swift
//  Pods
//
//  Created by Dodda Srinivasan on 03/07/17.
//
//

import UIKit

public class KSUITheme: UIView {
    
    dynamic public var fonts: [String: String] = [:]
    dynamic public var colors: [String: UIColor] = [:]
    
}

extension UIView {
    
    func setInspectables(){
    
    }
    
    internal func font(_ type: String) -> String? {
        var fontName: String?
        
        for key: String in KSUITheme.appearance().fonts.keys {
            if(key.lowercased() == type.lowercased()){
                fontName = KSUITheme.appearance().fonts[key]!
                break
            }
        }
        
        return fontName
    }
    
    internal func color(_ type: String) -> UIColor? {
        var color: UIColor?
        
        for key: String in KSUITheme.appearance().colors.keys {
            if(key.lowercased() == type.lowercased()){
                color = KSUITheme.appearance().colors[key]!
                break
            }
        }
        
        return color
    }
}

extension UIColor {
    convenience public init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience public init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
}
