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
    
    private func font() -> UIFont? {
        guard fontType != nil else {
            return self.font
        }
        
        return UIFont.init(name: font(fontType), size: fontSize)
    }

}
