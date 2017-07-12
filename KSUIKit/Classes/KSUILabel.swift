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
    
    @IBInspectable public var fontType: String = "" {
        didSet {
            setInspectables()
        }
    }
    
    @IBInspectable public var colorType: String = "" {
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
        self.font = UIFont.init(name: font(fontType),
                                size: fontSize)
        self.textColor = color(colorType)
    }
    
}
