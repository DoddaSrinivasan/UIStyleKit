//
//  KSUISegmentedControl.swift
//  Pods
//
//  Created by Dodda Srinivasan on 03/07/17.
//
//

import UIKit

class SKUISegmentedControl: UISegmentedControl {

    @IBInspectable public var fontSize: CGFloat = 16 {
        didSet {
            setInspectables()
        }
    }
    
    @IBInspectable public var normalFontType: String = "" {
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
        
        self.setTitleTextAttributes(self.fontAttributesFor(type: highlightedFontType ?? normalFontType),
                                    for: .highlighted)
        
        self.setTitleTextAttributes(self.fontAttributesFor(type: selectedFontType ?? normalFontType),
                                    for: .selected)
        
        self.setTitleTextAttributes(self.fontAttributesFor(type: disabledFontType ?? normalFontType),
                                    for: .disabled)
    }
    
    func fontAttributesFor(type: String) -> [AnyHashable : Any]{
        let font = fontFor(type)
        return NSDictionary(object: font, forKey: NSFontAttributeName as NSCopying) as! [AnyHashable: Any]
    }
    
    private func fontFor(_ type: String) -> UIFont? {
        let systemFont = UIFont.systemFont(ofSize: fontSize)
        return UIFont.init(name: font(type), size: fontSize) ?? systemFont
    }

}
