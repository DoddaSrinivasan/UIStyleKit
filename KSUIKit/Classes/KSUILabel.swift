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
    
    dynamic public var fonts: [String: String] = [:]

    @IBInspectable public var color: UIColor = .black {
        didSet {
            setInspectables()
        }
    }
    
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
    
    func setInspectables(){
        self.textColor = self.color
        self.font = UIFont.init(name: font(fontType),
                                size: fontSize)
    }
    
    func font(_ type: String) -> String{
        var fontName = "Helvetica"
        for key: String in KSUILabel.appearance().fonts.keys {
            if(key.lowercased() == type.lowercased()){
                fontName = KSUILabel.appearance().fonts[key]!
                break
            }
        }
        return fontName
    }

}
