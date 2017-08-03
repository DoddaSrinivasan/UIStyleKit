//
//  KSUIButton.swift
//  Pods
//
//  Created by Dodda Srinivasan on 03/07/17.
//
//

import UIKit

@IBDesignable
class SKUIButton: UIButton {

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
    
    @IBInspectable public var bgColorType: String? {
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
        self.titleLabel?.font = font()
        self.setTitleColor(color(), for: .normal)
        
        self.backgroundColor = bgColor()
        self.layer.borderColor = borderColor().cgColor
        self.layer.borderWidth = borderWidth
        self.layer.cornerRadius = cornerRadius
    }
    
    // MARK: Private functions
    
    private func font() -> UIFont? {
        guard fontType != nil else {
            return self.titleLabel?.font
        }
        
        return UIFont.init(name: font(fontType), size: fontSize)        
    }
    
    private func color() -> UIColor {
        guard colorType != nil else {
            return self.titleColor(for: .normal) ?? UIColor.black
        }
        
        return color(colorType!) ?? UIColor.black
    }
    
    private func bgColor() -> UIColor {
        guard bgColorType != nil else {
            return UIColor.clear
        }
        
        return color(bgColorType!) ?? UIColor.clear
    }

    private func borderColor() -> UIColor {
        guard borderColorType != nil else {
            return UIColor.clear
        }
        
        return color(borderColorType!) ?? UIColor.clear
    }
}
