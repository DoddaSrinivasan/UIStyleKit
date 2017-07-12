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
    
    override func setInspectables(){
        self.font = font()
    }
    
    private func font() -> UIFont {
        if let _ = fontType, let fontName: String = font(fontType!) {
            return UIFont.init(name: fontName, size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)
        }
        
        return self.font ?? UIFont.systemFont(ofSize: fontSize)
    }

}
