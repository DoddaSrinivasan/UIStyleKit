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
    
    @IBInspectable public var fontType: String = "" {
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
        self.titleLabel?.font = UIFont.init(name: font(fontType), size: fontSize)
        self.setTitleColor(color(), for: .normal)
        
        self.backgroundColor = bgColor()
        self.layer.borderColor = borderColor().cgColor
        self.layer.borderWidth = borderWidth
        self.layer.cornerRadius = cornerRadius
    }
    
    // MARK: Private functions
    
    private func color() -> UIColor {
        return colorType != nil ? color(colorType!) : UIColor.black
    }
    
    private func bgColor() -> UIColor {
        return bgColorType != nil ? color(bgColorType!) : UIColor.white
    }

    private func borderColor() -> UIColor {
        return borderColorType != nil ? color(borderColorType!) : UIColor.clear
    }
}
