//
//  BaselineViewAnchor.swift
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


public protocol BaselineViewAnchor: BaselineAnchor {}

public extension BaselineViewAnchor {
    @discardableResult
    public func firstBaseline(_ relation: Relation, _ view: View, attribute: Attribute = .firstBaseline, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.top:
                result = firstBaseline(relation, view.topAnchor, offset: offset, priority: priority, active: active)
            case Attribute.bottom:
                result = firstBaseline(relation, view.bottomAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerY:
                result = firstBaseline(relation, view.centerYAnchor, offset: offset, priority: priority, active: active)
            case Attribute.lastBaseline:
                result = firstBaseline(relation, view.lastBaselineAnchor, offset: offset, priority: priority, active: active)
            case Attribute.firstBaseline:
                result = firstBaseline(relation, view.firstBaselineAnchor, offset: offset, priority: priority, active: active)
            default:
            #if os(OSX)
                fatalError("Unsupported attribute")
            #else
                switch attribute {
                    case Attribute.topMargin:
                        result = firstBaseline(relation, view.layoutMarginsGuide.topAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.bottomMargin:
                        result = firstBaseline(relation, view.layoutMarginsGuide.bottomAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.centerYMargin,
                         Attribute.centerYWithinMargins:
                        result = firstBaseline(relation, view.layoutMarginsGuide.centerYAnchor, offset: offset, priority: priority, active: active)
                    default:
                        fatalError("Unsupported attribute")
                }
            #endif
        }
        
        return result
    }
    
    @discardableResult
    public func lastBaseline(_ relation: Relation, _ view: View, attribute: Attribute = .lastBaseline, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.top:
                result = lastBaseline(relation, view.topAnchor, offset: offset, priority: priority, active: active)
            case Attribute.bottom:
                result = lastBaseline(relation, view.bottomAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerY:
                result = lastBaseline(relation, view.centerYAnchor, offset: offset, priority: priority, active: active)
            case Attribute.lastBaseline:
                result = lastBaseline(relation, view.lastBaselineAnchor, offset: offset, priority: priority, active: active)
            case Attribute.firstBaseline:
                result = lastBaseline(relation, view.firstBaselineAnchor, offset: offset, priority: priority, active: active)
            default:
            #if os(OSX)
                fatalError("Unsupported attribute")
            #else
                switch attribute {
                    case Attribute.topMargin:
                        result = lastBaseline(relation, view.layoutMarginsGuide.topAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.bottomMargin:
                        result = lastBaseline(relation, view.layoutMarginsGuide.bottomAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.centerYMargin,
                         Attribute.centerYWithinMargins:
                        result = lastBaseline(relation, view.layoutMarginsGuide.centerYAnchor, offset: offset, priority: priority, active: active)
                    default:
                        fatalError("Unsupported attribute")
                }
            #endif
        }
        
        return result
    }
    
    @discardableResult
    public func baseline(_ relation: Relation, _ view: View, offset: [CGFloat] = [0, 0], priority: Priority = .required, active: Bool = true) -> Constraints {
        guard offset.count == 2 else { fatalError("offset needs to have 2 values (firstBaseline and lastBaseline)") }
        
        let first = firstBaseline(relation, view, attribute: .firstBaseline, offset: offset[0], priority: priority, active: active)
        let last = lastBaseline(relation, view, attribute: .lastBaseline, offset: offset[0], priority: priority, active: active)
        
        return [.firstBaseline: first, .lastBaseline: last]
    }
}
