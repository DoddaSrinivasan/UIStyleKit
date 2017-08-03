//
//  KSUIView.swift
//  Pods
//
//  Created by Srinivasan Dodda on 12/07/17.
//
//

import UIKit

@IBDesignable
class SKUIView: UIView {

    @IBInspectable public var bgColorType: String? {
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
        if let _ = bgColorType, let bgColor = color(bgColorType!){
         	self.backgroundColor =  bgColor
        }
    }

}
