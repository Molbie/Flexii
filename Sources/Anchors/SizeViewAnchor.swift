//
//  SizeViewAnchor.swift
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


public protocol SizeViewAnchor: SizeAnchor {}

public extension SizeViewAnchor {
    @discardableResult
    public func width(_ relation: Relation, _ view: View, attribute: Attribute = .width, multiplier: CGFloat = 1, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.width:
                result = width(relation, view.widthAnchor, multiplier: multiplier, offset: offset, priority: priority, active: active)
            case Attribute.height:
                result = width(relation, view.heightAnchor, multiplier: multiplier, offset: offset, priority: priority, active: active)
            default:
            #if os(OSX)
                fatalError("Unsupported attribute")
            #else
                switch attribute {
                    case Attribute.widthMargin:
                        result = width(relation, view.layoutMarginsGuide.widthAnchor, multiplier: multiplier, offset: offset, priority: priority, active: active)
                    case Attribute.heightMargin:
                        result = width(relation, view.layoutMarginsGuide.heightAnchor, multiplier: multiplier, offset: offset, priority: priority, active: active)
                    default:
                        fatalError("Unsupported attribute")
                }
            #endif
        }
        
        return result
    }
    
    @discardableResult
    public func width(min: CGFloat, max: CGFloat, _ view: View, multiplier: CGFloat = 1, priority: Priority = .required, active: Bool = true) -> [Constraint] {
        let min = width(.greaterThanOrEqual, view, attribute: .width, multiplier: multiplier, offset: min, priority: priority, active: active)
        let max = width(.lessThanOrEqual, view, attribute: .width, multiplier: multiplier, offset: max, priority: priority, active: active)
        
        return [min, max]
    }
    
    @discardableResult
    public func height(_ relation: Relation, _ view: View, attribute: Attribute = .height, multiplier: CGFloat = 1, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.width:
                result = height(relation, view.widthAnchor, multiplier: multiplier, offset: offset, priority: priority, active: active)
            case Attribute.height:
                result = height(relation, view.heightAnchor, multiplier: multiplier, offset: offset, priority: priority, active: active)
            default:
            #if os(OSX)
                fatalError("Unsupported attribute")
            #else
                switch attribute {
                    case Attribute.widthMargin:
                        result = height(relation, view.layoutMarginsGuide.widthAnchor, multiplier: multiplier, offset: offset, priority: priority, active: active)
                    case Attribute.heightMargin:
                        result = height(relation, view.layoutMarginsGuide.heightAnchor, multiplier: multiplier, offset: offset, priority: priority, active: active)
                    default:
                        fatalError("Unsupported attribute")
                }
            #endif
        }
        
        return result
    }
    
    @discardableResult
    public func height(min: CGFloat, max: CGFloat, _ view: View, multiplier: CGFloat = 1, priority: Priority = .required, active: Bool = true) -> [Constraint] {
        let min = height(.greaterThanOrEqual, view, attribute: .height, multiplier: multiplier, offset: min, priority: priority, active: active)
        let max = height(.lessThanOrEqual, view, attribute: .height, multiplier: multiplier, offset: max, priority: priority, active: active)
        
        return [min, max]
    }
    
    @discardableResult
    public func size(_ relation: Relation, _ view: View, multiplier: CGSize = CGSize(width: 1, height: 1), offset: CGSize = .zero, priority: Priority = .required, active: Bool = true) -> Constraints {
        let w = width(relation, view, attribute: .width, multiplier: multiplier.width, offset: offset.width, priority: priority, active: active)
        let h = height(relation, view, attribute: .height, multiplier: multiplier.height, offset: offset.height, priority: priority, active: active)
        
        return [.width: w, .height: h]
    }
    
    @discardableResult
    public func size(min: CGSize, max: CGSize, _ view: View, multiplier: CGSize = CGSize(width: 1, height: 1), priority: Priority = .required, active: Bool = true) -> [Attribute: [Constraint]] {
        let w = width(min: min.width, max: max.width, view, multiplier: multiplier.width, priority: priority, active: active)
        let h = height(min: min.height, max: max.height, view, multiplier: multiplier.height, priority: priority, active: active)
        
        return [.width: w, .height: h]
    }
}
