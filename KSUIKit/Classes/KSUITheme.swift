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
    
}

extension UIView {
    
    func setInspectables(){
    
    }
    
    func font(_ type: String) -> String{
        var fontName = "Helvetica"
        for key: String in KSUITheme.appearance().fonts.keys {
            if(key.lowercased() == type.lowercased()){
                fontName = KSUITheme.appearance().fonts[key]!
                break
            }
        }
        return fontName
    }
    
}
