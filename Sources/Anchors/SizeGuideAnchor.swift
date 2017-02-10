//
//  SizeGuideAnchor.swift
//  Flexii
//
//  Created by Brian Mullen on 2/8/17.
//  Copyright © 2017 Molbie LLC. All rights reserved.
//

#if os(OSX)
    import AppKit
#else
    import UIKit
#endif


public protocol SizeGuideAnchor: SizeAnchor {}

public extension SizeGuideAnchor {
    @discardableResult
    public func width(_ relation: Relation, _ guide: Guide, attribute: Attribute = .width, multiplier: CGFloat = 1, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.width,
                 Attribute.widthMargin:
                result = width(relation, guide.widthAnchor, multiplier: multiplier, offset: offset, priority: priority, active: active)
            case Attribute.height,
                 Attribute.heightMargin:
                result = width(relation, guide.heightAnchor, multiplier: multiplier, offset: offset, priority: priority, active: active)
            default:
                fatalError("Unsupported attribute")
        }
        
        return result
    }
    
    @discardableResult
    public func width(min: CGFloat, max: CGFloat, _ guide: Guide, multiplier: CGFloat = 1, priority: Priority = .required, active: Bool = true) -> [Constraint] {
        let min = width(.greaterThanOrEqual, guide, attribute: .width, multiplier: multiplier, offset: min, priority: priority, active: active)
        let max = width(.lessThanOrEqual, guide, attribute: .width, multiplier: multiplier, offset: max, priority: priority, active: active)
        
        return [min, max]
    }
    
    @discardableResult
    public func height(_ relation: Relation, _ guide: Guide, attribute: Attribute = .height, multiplier: CGFloat = 1, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.width,
                 Attribute.widthMargin:
                result = height(relation, guide.widthAnchor, multiplier: multiplier, offset: offset, priority: priority, active: active)
            case Attribute.height,
                 Attribute.heightMargin:
                result = height(relation, guide.heightAnchor, multiplier: multiplier, offset: offset, priority: priority, active: active)
            default:
                fatalError("Unsupported attribute")
        }
        
        return result
    }
    
    @discardableResult
    public func height(min: CGFloat, max: CGFloat, _ guide: Guide, multiplier: CGFloat = 1, priority: Priority = .required, active: Bool = true) -> [Constraint] {
        let min = height(.greaterThanOrEqual, guide, attribute: .height, multiplier: multiplier, offset: min, priority: priority, active: active)
        let max = height(.lessThanOrEqual, guide, attribute: .height, multiplier: multiplier, offset: max, priority: priority, active: active)
        
        return [min, max]
    }
    
    @discardableResult
    public func size(_ relation: Relation, _ guide: Guide, multiplier: CGSize = CGSize(width: 1, height: 1), offset: CGSize = .zero, priority: Priority = .required, active: Bool = true) -> Constraints {
        let w = width(relation, guide, attribute: .width, multiplier: multiplier.width, offset: offset.width, priority: priority, active: active)
        let h = height(relation, guide, attribute: .height, multiplier: multiplier.height, offset: offset.height, priority: priority, active: active)
        
        return [.width: w, .height: h]
    }
    
    @discardableResult
    public func size(min: CGSize, max: CGSize, _ guide: Guide, multiplier: CGSize = CGSize(width: 1, height: 1), priority: Priority = .required, active: Bool = true) -> [Attribute: [Constraint]] {
        let w = width(min: min.width, max: max.width, guide, multiplier: multiplier.width, priority: priority, active: active)
        let h = height(min: min.height, max: max.height, guide, multiplier: multiplier.height, priority: priority, active: active)
        
        return [.width: w, .height: h]
    }
}
