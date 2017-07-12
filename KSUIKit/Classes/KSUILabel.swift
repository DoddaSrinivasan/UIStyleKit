//
//  KSUILabel.swift
//  Pods
//
//  Created by Srinivasan Dodda on 23/06/17.
//
//

import UIKit

@IBDesignable
public class KSUILabel: UILabel {
    
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
        
        if let _ = colorType {
         	self.textColor = color(colorType!) ?? self.textColor
        }
    }
    
    // MARK: Private function
    
    private func font() -> UIFont {
        if let _ = fontType, let fontName: String = font(fontType!) {
            return UIFont.init(name: fontName, size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)
        }
        
        return self.font ?? UIFont.systemFont(ofSize: fontSize)
    }
    
}
