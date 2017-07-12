//
//  KSUIButton.swift
//  Pods
//
//  Created by Dodda Srinivasan on 03/07/17.
//
//

import UIKit

class KSUIButton: UIButton {

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
    
    private func font() -> UIFont {
        if let _ = fontType, let fontName: String = font(fontType!) {
            return UIFont.init(name: fontName, size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)
        }
        
        return self.titleLabel?.font ?? UIFont.systemFont(ofSize: fontSize)
    }
    
    private func color() -> UIColor {
        if let _ = colorType {
            return color(colorType!) ?? UIColor.black
        }
        
        return self.titleColor(for: .normal) ?? UIColor.black
    }
    
    private func bgColor() -> UIColor {
        if let _ = bgColorType {
            return color(bgColorType!) ?? UIColor.clear
        }
        
        return self.backgroundColor ?? UIColor.white
    }

    private func borderColor() -> UIColor {
        if let _ = borderColorType {
            return color(borderColorType!) ?? UIColor.clear
        }
        
        return UIColor.black
    }
}
