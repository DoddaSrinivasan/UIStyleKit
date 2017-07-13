//
//  KSUITextField.swift
//  Pods
//
//  Created by Dodda Srinivasan on 03/07/17.
//
//

import UIKit

@IBDesignable
class KSUITextField: UITextField {

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
    
    @IBInspectable public var borderColorType: String? {
        didSet {
            setInspectables()
        }
    }
    
    @IBInspectable public var borderWidth: CGFloat = 0 {
        didSet {
            setInspectables()
        }
    }
    
    @IBInspectable public var cornerRadius: CGFloat = 0 {
        didSet {
            setInspectables()
        }
    }
    
    override func setInspectables(){
        self.font = font()
        self.textColor = color()
        self.tintColor = color() ?? UIColor.black
        self.layer.borderColor = borderColor().cgColor
        self.layer.borderWidth = borderWidth
        self.layer.cornerRadius = cornerRadius
    }
    
    private func font() -> UIFont? {
        guard fontType != nil else {
            return self.font
        }
        
        return UIFont.init(name: font(fontType), size: fontSize)
    }
    
    private func color() -> UIColor? {
        guard colorType != nil else {
            return self.textColor
        }
        
        return color(colorType!)
    }
    
    private func borderColor() -> UIColor {
        guard borderColorType != nil else {
            return UIColor.clear
        }
        
        return color(borderColorType!) ?? UIColor.clear
    }

}
