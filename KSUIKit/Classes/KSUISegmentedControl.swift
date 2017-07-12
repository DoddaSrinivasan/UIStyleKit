//
//  KSUISegmentedControl.swift
//  Pods
//
//  Created by Dodda Srinivasan on 03/07/17.
//
//

import UIKit

class KSUISegmentedControl: UISegmentedControl {

    @IBInspectable public var fontSize: CGFloat = 16 {
        didSet {
            setInspectables()
        }
    }
    
    @IBInspectable public var normalFontType: String? {
        didSet {
            setInspectables()
        }
    }
    
    @IBInspectable public var highlightedFontType: String? {
        didSet {
            setInspectables()
        }
    }
    
    @IBInspectable public var selectedFontType: String? {
        didSet {
            setInspectables()
        }
    }
    
    @IBInspectable public var disabledFontType: String? {
        didSet {
            setInspectables()
        }
    }
    
    override func setInspectables(){
        self.setTitleTextAttributes(self.fontAttributesFor(type: normalFontType),
                                    for: .normal)
        
        self.setTitleTextAttributes(self.fontAttributesFor(type: highlightedFontType),
                                    for: .highlighted)
        
        self.setTitleTextAttributes(self.fontAttributesFor(type: selectedFontType),
                                    for: .selected)
        
        self.setTitleTextAttributes(self.fontAttributesFor(type: disabledFontType),
                                    for: .disabled)
    }
    
    func fontAttributesFor(type: String?) -> [AnyHashable : Any]{
        let font = fontFor(type)
        return NSDictionary(object: font, forKey: NSFontAttributeName as NSCopying) as! [AnyHashable: Any]
    }
    
    private func fontFor(_ type: String?) -> UIFont {
        if let _ = type, let fontName: String = font(type!) {
            return UIFont.init(name: fontName, size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)
        }
        
        return UIFont.systemFont(ofSize: fontSize)
    }

}
