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
    
    required public init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.setInspectables()
        
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        self.setInspectables()
    }
    
    override public func draw(_ rect: CGRect) {
        super.draw(rect)
        setInspectables()
    }
    
    override public func prepareForInterfaceBuilder() {
        setInspectables()
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
        let font = UIFont(name: self.font(type), size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)
        return NSDictionary(object: font, forKey: NSFontAttributeName as NSCopying) as! [AnyHashable: Any]
    }

}
