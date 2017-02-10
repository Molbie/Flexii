//
//  CenterViewAnchor.swift
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


public protocol CenterViewAnchor: CenterAnchor {}

public extension CenterViewAnchor {
    @discardableResult
    public func centerX(_ relation: Relation, _ view: View, attribute: Attribute = .centerX, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.left:
                result = centerX(relation, view.leftAnchor, offset: offset, priority: priority, active: active)
            case Attribute.right:
                result = centerX(relation, view.rightAnchor, offset: offset, priority: priority, active: active)
            case Attribute.leading:
                result = centerX(relation, view.leadingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.trailing:
                result = centerX(relation, view.trailingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerX:
                result = centerX(relation, view.centerXAnchor, offset: offset, priority: priority, active: active)
            default:
            #if os(OSX)
                fatalError("Unsupported attribute")
            #else
                switch attribute {
                    case Attribute.leftMargin:
                        result = centerX(relation, view.layoutMarginsGuide.leftAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.rightMargin:
                        result = centerX(relation, view.layoutMarginsGuide.rightAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.leadingMargin:
                        result = centerX(relation, view.layoutMarginsGuide.leadingAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.trailingMargin:
                        result = centerX(relation, view.layoutMarginsGuide.trailingAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.centerXMargin,
                         Attribute.centerXWithinMargins:
                        result = centerX(relation, view.layoutMarginsGuide.centerXAnchor, offset: offset, priority: priority, active: active)
                    default:
                        fatalError("Unsupported attribute")
                }
            #endif
        }
        
        return result
    }
    
    @discardableResult
    public func centerY(_ relation: Relation, _ view: View, attribute: Attribute = .centerY, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.top:
                result = centerY(relation, view.topAnchor, offset: offset, priority: priority, active: active)
            case Attribute.bottom:
                result = centerY(relation, view.bottomAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerY:
                result = centerY(relation, view.centerYAnchor, offset: offset, priority: priority, active: active)
            case Attribute.lastBaseline:
                result = centerY(relation, view.lastBaselineAnchor, offset: offset, priority: priority, active: active)
            case Attribute.firstBaseline:
                result = centerY(relation, view.firstBaselineAnchor, offset: offset, priority: priority, active: active)
            default:
            #if os(OSX)
                fatalError("Unsupported attribute")
            #else
                switch attribute {
                    case Attribute.topMargin:
                        result = centerY(relation, view.layoutMarginsGuide.topAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.bottomMargin:
                        result = centerY(relation, view.layoutMarginsGuide.bottomAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.centerYMargin,
                         Attribute.centerYWithinMargins:
                        result = centerY(relation, view.layoutMarginsGuide.centerYAnchor, offset: offset, priority: priority, active: active)
                    default:
                        fatalError("Unsupported attribute")
                }
            #endif
        }
        
        return result
    }
    
    @discardableResult
    public func center(_ relation: Relation, _ view: View, offset: CGPoint = .zero, priority: Priority = .required, active: Bool = true) -> Constraints {
        let x = centerX(relation, view.centerXAnchor, offset: offset.x, priority: priority, active: active)
        let y = centerY(relation, view.centerYAnchor, offset: offset.y, priority: priority, active: active)
        
        return [.centerX: x, .centerY: y]
    }
}
