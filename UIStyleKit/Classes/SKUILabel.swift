//
//  KSUILabel.swift
//  Pods
//
//  Created by Srinivasan Dodda on 23/06/17.
//
//

import UIKit

@IBDesignable
public class SKUILabel: UILabel {
    
    @IBInspectable public var fontSize: CGFloat = 16 {
        didSet {
            setInspectables()
        }
    }
    
    @IBInspectable public var fontType: String? {
        didSet {
            setInspectables()
        }
    }
    
    @IBInspectable public var colorType: String? {
        didSet {
            setInspectables()
        }
    }
    
    override func setInspectables(){
        self.font = font()
        self.textColor = color()
    }
    
    // MARK: Private function
    
    private func font() -> UIFont? {
        guard fontType != nil else {
            return self.font
        }
        
        return UIFont.init(name: font(fontType), size: fontSize)
    }
    
    private func color() -> UIColor {
        guard colorType != nil else {
            return self.textColor
        }
        
        return color(colorType!) ?? self.textColor
    }
    
}
