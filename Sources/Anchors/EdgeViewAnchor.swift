//
//  EdgeViewAnchor.swift
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


public protocol EdgeViewAnchor: EdgeAnchor {}

public extension EdgeViewAnchor {
    @discardableResult
    public func leading(_ relation: Relation, _ view: View, attribute: Attribute = .leading, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.left:
                result = leading(relation, view.leftAnchor, offset: offset, priority: priority, active: active)
            case Attribute.right:
                result = leading(relation, view.rightAnchor, offset: offset, priority: priority, active: active)
            case Attribute.leading:
                result = leading(relation, view.leadingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.trailing:
                result = leading(relation, view.trailingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerX:
                result = leading(relation, view.centerXAnchor, offset: offset, priority: priority, active: active)
            default:
            #if os(OSX)
                fatalError("Unsupported attribute")
            #else
                switch attribute {
                    case Attribute.leftMargin:
                        result = leading(relation, view.layoutMarginsGuide.leftAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.rightMargin:
                        result = leading(relation, view.layoutMarginsGuide.rightAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.leadingMargin:
                        result = leading(relation, view.layoutMarginsGuide.leadingAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.trailingMargin:
                        result = leading(relation, view.layoutMarginsGuide.trailingAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.centerXMargin,
                         Attribute.centerXWithinMargins:
                        result = leading(relation, view.layoutMarginsGuide.centerXAnchor, offset: offset, priority: priority, active: active)
                    default:
                        fatalError("Unsupported attribute")
                }
            #endif
        }
        
        return result
    }
    
    @discardableResult
    public func trailing(_ relation: Relation, _ view: View, attribute: Attribute = .trailing, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.left:
                result = trailing(relation, view.leftAnchor, offset: offset, priority: priority, active: active)
            case Attribute.right:
                result = trailing(relation, view.rightAnchor, offset: offset, priority: priority, active: active)
            case Attribute.leading:
                result = trailing(relation, view.leadingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.trailing:
                result = trailing(relation, view.trailingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerX:
                result = trailing(relation, view.centerXAnchor, offset: offset, priority: priority, active: active)
            default:
            #if os(OSX)
                fatalError("Unsupported attribute")
            #else
                switch attribute {
                    case Attribute.leftMargin:
                        result = trailing(relation, view.layoutMarginsGuide.leftAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.rightMargin:
                        result = trailing(relation, view.layoutMarginsGuide.rightAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.leadingMargin:
                        result = trailing(relation, view.layoutMarginsGuide.leadingAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.trailingMargin:
                        result = trailing(relation, view.layoutMarginsGuide.trailingAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.centerXMargin,
                         Attribute.centerXWithinMargins:
                        result = trailing(relation, view.layoutMarginsGuide.centerXAnchor, offset: offset, priority: priority, active: active)
                    default:
                        fatalError("Unsupported attribute")
                }
            #endif
        }
        
        return result
    }
    
    @discardableResult
    public func left(_ relation: Relation, _ view: View, attribute: Attribute = .left, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.left:
                result = left(relation, view.leftAnchor, offset: offset, priority: priority, active: active)
            case Attribute.right:
                result = left(relation, view.rightAnchor, offset: offset, priority: priority, active: active)
            case Attribute.leading:
                result = left(relation, view.leadingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.trailing:
                result = left(relation, view.trailingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerX:
                result = left(relation, view.centerXAnchor, offset: offset, priority: priority, active: active)
            default:
            #if os(OSX)
                fatalError("Unsupported attribute")
            #else
                switch attribute {
                    case Attribute.leftMargin:
                        result = left(relation, view.layoutMarginsGuide.leftAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.rightMargin:
                        result = left(relation, view.layoutMarginsGuide.rightAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.leadingMargin:
                        result = left(relation, view.layoutMarginsGuide.leadingAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.trailingMargin:
                        result = left(relation, view.layoutMarginsGuide.trailingAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.centerXMargin,
                         Attribute.centerXWithinMargins:
                        result = left(relation, view.layoutMarginsGuide.centerXAnchor, offset: offset, priority: priority, active: active)
                    default:
                        fatalError("Unsupported attribute")
                }
            #endif
        }
        
        return result
    }
    
    @discardableResult
    public func right(_ relation: Relation, _ view: View, attribute: Attribute = .right, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.left:
                result = right(relation, view.leftAnchor, offset: offset, priority: priority, active: active)
            case Attribute.right:
                result = right(relation, view.rightAnchor, offset: offset, priority: priority, active: active)
            case Attribute.leading:
                result = right(relation, view.leadingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.trailing:
                result = right(relation, view.trailingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerX:
                result = right(relation, view.centerXAnchor, offset: offset, priority: priority, active: active)
            default:
            #if os(OSX)
                fatalError("Unsupported attribute")
            #else
                switch attribute {
                    case Attribute.leftMargin:
                        result = right(relation, view.layoutMarginsGuide.leftAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.rightMargin:
                        result = right(relation, view.layoutMarginsGuide.rightAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.leadingMargin:
                        result = right(relation, view.layoutMarginsGuide.leadingAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.trailingMargin:
                        result = right(relation, view.layoutMarginsGuide.trailingAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.centerXMargin,
                         Attribute.centerXWithinMargins:
                        result = right(relation, view.layoutMarginsGuide.centerXAnchor, offset: offset, priority: priority, active: active)
                    default:
                        fatalError("Unsupported attribute")
                }
            #endif
        }
        
        return result
    }
    
    @discardableResult
    public func top(_ relation: Relation, _ view: View, attribute: Attribute = .top, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.top:
                result = top(relation, view.topAnchor, offset: offset, priority: priority, active: active)
            case Attribute.bottom:
                result = top(relation, view.bottomAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerY:
                result = top(relation, view.centerYAnchor, offset: offset, priority: priority, active: active)
            case Attribute.lastBaseline:
                result = top(relation, view.lastBaselineAnchor, offset: offset, priority: priority, active: active)
            case Attribute.firstBaseline:
                result = top(relation, view.firstBaselineAnchor, offset: offset, priority: priority, active: active)
            default:
            #if os(OSX)
                fatalError("Unsupported attribute")
            #else
                switch attribute {
                    case Attribute.topMargin:
                        result = top(relation, view.layoutMarginsGuide.topAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.bottomMargin:
                        result = top(relation, view.layoutMarginsGuide.bottomAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.centerYMargin,
                         Attribute.centerYWithinMargins:
                        result = top(relation, view.layoutMarginsGuide.centerYAnchor, offset: offset, priority: priority, active: active)
                    default:
                        fatalError("Unsupported attribute")
                }
            #endif
        }
        
        return result
    }
    
    @discardableResult
    public func bottom(_ relation: Relation, _ view: View, attribute: Attribute = .bottom, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.top:
                result = bottom(relation, view.topAnchor, offset: offset, priority: priority, active: active)
            case Attribute.bottom:
                result = bottom(relation, view.bottomAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerY:
                result = bottom(relation, view.centerYAnchor, offset: offset, priority: priority, active: active)
            case Attribute.lastBaseline:
                result = bottom(relation, view.lastBaselineAnchor, offset: offset, priority: priority, active: active)
            case Attribute.firstBaseline:
                result = bottom(relation, view.firstBaselineAnchor, offset: offset, priority: priority, active: active)
            default:
            #if os(OSX)
                fatalError("Unsupported attribute")
            #else
                switch attribute {
                    case Attribute.topMargin:
                        result = bottom(relation, view.layoutMarginsGuide.topAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.bottomMargin:
                        result = bottom(relation, view.layoutMarginsGuide.bottomAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.centerYMargin,
                         Attribute.centerYWithinMargins:
                        result = bottom(relation, view.layoutMarginsGuide.centerYAnchor, offset: offset, priority: priority, active: active)
                    default:
                        fatalError("Unsupported attribute")
                }
            #endif
        }
        
        return result
    }
    
    @discardableResult
    public func edges(_ relation: Relation, _ view: View, offset: Insets = .zero, priority: Priority = .required, active: Bool = true) -> Constraints {
        let topEdge = top(relation, view, attribute: .top, offset: offset.top, priority: priority, active: active)
        let leftEdge = leading(relation, view, attribute: .leading, offset: offset.left, priority: priority, active: active)
        let bottomEdge = bottom(relation, view, attribute: .bottom, offset: offset.bottom, priority: priority, active: active)
        let rightEdge = trailing(relation, view, attribute: .trailing, offset: offset.right, priority: priority, active: active)
        
        return [.top: topEdge, .leading: leftEdge, .bottom: bottomEdge, .trailing: rightEdge]
    }
}
