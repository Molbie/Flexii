//
//  MarginViewAnchor.swift
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


public protocol MarginViewAnchor: MarginAnchor {}

public extension MarginViewAnchor {
    @discardableResult
    public func leadingMargin(_ relation: Relation, _ view: View, attribute: Attribute = .leadingMargin, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.left:
                result = leadingMargin(relation, view.leftAnchor, offset: offset, priority: priority, active: active)
            case Attribute.right:
                result = leadingMargin(relation, view.rightAnchor, offset: offset, priority: priority, active: active)
            case Attribute.leading:
                result = leadingMargin(relation, view.leadingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.trailing:
                result = leadingMargin(relation, view.trailingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerX:
                result = leadingMargin(relation, view.centerXAnchor, offset: offset, priority: priority, active: active)
            default:
            #if os(OSX)
                fatalError("Unsupported attribute")
            #else
                switch attribute {
                    case Attribute.leftMargin:
                        result = leadingMargin(relation, view.layoutMarginsGuide.leftAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.rightMargin:
                        result = leadingMargin(relation, view.layoutMarginsGuide.rightAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.leadingMargin:
                        result = leadingMargin(relation, view.layoutMarginsGuide.leadingAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.trailingMargin:
                        result = leadingMargin(relation, view.layoutMarginsGuide.trailingAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.centerXMargin,
                         Attribute.centerXWithinMargins:
                        result = leadingMargin(relation, view.layoutMarginsGuide.centerXAnchor, offset: offset, priority: priority, active: active)
                    default:
                        fatalError("Unsupported attribute")
                }
            #endif
            
        }
        
        return result
    }
    
    @discardableResult
    public func trailingMargin(_ relation: Relation, _ view: View, attribute: Attribute = .trailingMargin, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.left:
                result = trailingMargin(relation, view.leftAnchor, offset: offset, priority: priority, active: active)
            case Attribute.right:
                result = trailingMargin(relation, view.rightAnchor, offset: offset, priority: priority, active: active)
            case Attribute.leading:
                result = trailingMargin(relation, view.leadingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.trailing:
                result = trailingMargin(relation, view.trailingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerX:
                result = trailingMargin(relation, view.centerXAnchor, offset: offset, priority: priority, active: active)
            default:
            #if os(OSX)
                fatalError("Unsupported attribute")
            #else
                switch attribute {
                    case Attribute.leftMargin:
                        result = trailingMargin(relation, view.layoutMarginsGuide.leftAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.rightMargin:
                        result = trailingMargin(relation, view.layoutMarginsGuide.rightAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.leadingMargin:
                        result = trailingMargin(relation, view.layoutMarginsGuide.leadingAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.trailingMargin:
                        result = trailingMargin(relation, view.layoutMarginsGuide.trailingAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.centerXMargin,
                         Attribute.centerXWithinMargins:
                        result = trailingMargin(relation, view.layoutMarginsGuide.centerXAnchor, offset: offset, priority: priority, active: active)
                    default:
                        fatalError("Unsupported attribute")
                }
            #endif
        }
        
        return result
    }
    
    @discardableResult
    public func leftMargin(_ relation: Relation, _ view: View, attribute: Attribute = .leftMargin, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.left:
                result = leftMargin(relation, view.leftAnchor, offset: offset, priority: priority, active: active)
            case Attribute.right:
                result = leftMargin(relation, view.rightAnchor, offset: offset, priority: priority, active: active)
            case Attribute.leading:
                result = leftMargin(relation, view.leadingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.trailing:
                result = leftMargin(relation, view.trailingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerX:
                result = leftMargin(relation, view.centerXAnchor, offset: offset, priority: priority, active: active)
            default:
            #if os(OSX)
                fatalError("Unsupported attribute")
            #else
                switch attribute {
                    case Attribute.leftMargin:
                        result = leftMargin(relation, view.layoutMarginsGuide.leftAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.rightMargin:
                        result = leftMargin(relation, view.layoutMarginsGuide.rightAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.leadingMargin:
                        result = leftMargin(relation, view.layoutMarginsGuide.leadingAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.trailingMargin:
                        result = leftMargin(relation, view.layoutMarginsGuide.trailingAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.centerXMargin,
                         Attribute.centerXWithinMargins:
                        result = leftMargin(relation, view.layoutMarginsGuide.centerXAnchor, offset: offset, priority: priority, active: active)
                    default:
                        fatalError("Unsupported attribute")
                }
            #endif
        }
        
        return result
    }
    
    @discardableResult
    public func rightMargin(_ relation: Relation, _ view: View, attribute: Attribute = .rightMargin, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.left:
                result = rightMargin(relation, view.leftAnchor, offset: offset, priority: priority, active: active)
            case Attribute.right:
                result = rightMargin(relation, view.rightAnchor, offset: offset, priority: priority, active: active)
            case Attribute.leading:
                result = rightMargin(relation, view.leadingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.trailing:
                result = rightMargin(relation, view.trailingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerX:
                result = rightMargin(relation, view.centerXAnchor, offset: offset, priority: priority, active: active)
            default:
            #if os(OSX)
                fatalError("Unsupported attribute")
            #else
                switch attribute {
                    case Attribute.leftMargin:
                        result = rightMargin(relation, view.layoutMarginsGuide.leftAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.rightMargin:
                        result = rightMargin(relation, view.layoutMarginsGuide.rightAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.leadingMargin:
                        result = rightMargin(relation, view.layoutMarginsGuide.leadingAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.trailingMargin:
                        result = rightMargin(relation, view.layoutMarginsGuide.trailingAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.centerXMargin,
                         Attribute.centerXWithinMargins:
                        result = rightMargin(relation, view.layoutMarginsGuide.centerXAnchor, offset: offset, priority: priority, active: active)
                    default:
                        fatalError("Unsupported attribute")
                }
            #endif
        }
        
        return result
    }
    
    @discardableResult
    public func topMargin(_ relation: Relation, _ view: View, attribute: Attribute = .topMargin, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.top:
                result = topMargin(relation, view.topAnchor, offset: offset, priority: priority, active: active)
            case Attribute.bottom:
                result = topMargin(relation, view.bottomAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerY:
                result = topMargin(relation, view.centerYAnchor, offset: offset, priority: priority, active: active)
            case Attribute.lastBaseline:
                result = topMargin(relation, view.lastBaselineAnchor, offset: offset, priority: priority, active: active)
            case Attribute.firstBaseline:
                result = topMargin(relation, view.firstBaselineAnchor, offset: offset, priority: priority, active: active)
            default:
            #if os(OSX)
                fatalError("Unsupported attribute")
            #else
                switch attribute {
                    case Attribute.topMargin:
                        result = topMargin(relation, view.layoutMarginsGuide.topAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.bottomMargin:
                        result = topMargin(relation, view.layoutMarginsGuide.bottomAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.centerYMargin,
                         Attribute.centerYWithinMargins:
                        result = topMargin(relation, view.layoutMarginsGuide.centerYAnchor, offset: offset, priority: priority, active: active)
                    default:
                        fatalError("Unsupported attribute")
                }
            #endif
        }
        
        return result
    }
    
    @discardableResult
    public func bottomMargin(_ relation: Relation, _ view: View, attribute: Attribute = .bottomMargin, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.top:
                result = bottomMargin(relation, view.topAnchor, offset: offset, priority: priority, active: active)
            case Attribute.bottom:
                result = bottomMargin(relation, view.bottomAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerY:
                result = bottomMargin(relation, view.centerYAnchor, offset: offset, priority: priority, active: active)
            case Attribute.lastBaseline:
                result = bottomMargin(relation, view.lastBaselineAnchor, offset: offset, priority: priority, active: active)
            case Attribute.firstBaseline:
                result = bottomMargin(relation, view.firstBaselineAnchor, offset: offset, priority: priority, active: active)
            default:
            #if os(OSX)
                fatalError("Unsupported attribute")
            #else
                switch attribute {
                    case Attribute.topMargin:
                        result = bottomMargin(relation, view.layoutMarginsGuide.topAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.bottomMargin:
                        result = bottomMargin(relation, view.layoutMarginsGuide.bottomAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.centerYMargin,
                         Attribute.centerYWithinMargins:
                        result = bottomMargin(relation, view.layoutMarginsGuide.centerYAnchor, offset: offset, priority: priority, active: active)
                    default:
                        fatalError("Unsupported attribute")
                }
            #endif
        }
        
        return result
    }
    
    @discardableResult
    public func edgesMargin(_ relation: Relation, _ view: View, offset: Insets = .zero, priority: Priority = .required, active: Bool = true) -> Constraints {
        let topEdge = topMargin(relation, view, attribute: .topMargin, offset: offset.top, priority: priority, active: active)
        let leftEdge = leadingMargin(relation, view, attribute: .leadingMargin, offset: offset.left, priority: priority, active: active)
        let bottomEdge = bottomMargin(relation, view, attribute: .bottomMargin, offset: offset.bottom, priority: priority, active: active)
        let rightEdge = trailingMargin(relation, view, attribute: .trailingMargin, offset: offset.right, priority: priority, active: active)
        
        return [.topMargin: topEdge, .leadingMargin: leftEdge, .bottomMargin: bottomEdge, .trailingMargin: rightEdge]
    }
    
    @discardableResult
    public func widthMargin(_ relation: Relation, _ view: View, attribute: Attribute = .widthMargin, multiplier: CGFloat = 1, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.width:
                result = widthMargin(relation, view.widthAnchor, offset: offset, priority: priority, active: active)
            case Attribute.height:
                result = widthMargin(relation, view.heightAnchor, offset: offset, priority: priority, active: active)
            default:
            #if os(OSX)
                fatalError("Unsupported attribute")
            #else
                switch attribute {
                    case Attribute.widthMargin:
                        result = widthMargin(relation, view.layoutMarginsGuide.widthAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.heightMargin:
                        result = widthMargin(relation, view.layoutMarginsGuide.heightAnchor, offset: offset, priority: priority, active: active)
                    default:
                        fatalError("Unsupported attribute")
                }
            #endif
        }
        
        return result
    }
    
    @discardableResult
    public func widthMargin(min: CGFloat, max: CGFloat, _ view: View, multiplier: CGFloat = 1, priority: Priority = .required, active: Bool = true) -> [Constraint] {
        let min = widthMargin(.greaterThanOrEqual, view, attribute: .widthMargin, multiplier: multiplier, offset: min, priority: priority, active: active)
        let max = widthMargin(.lessThanOrEqual, view, attribute: .widthMargin, multiplier: multiplier, offset: max, priority: priority, active: active)
        
        return [min, max]
    }
    
    @discardableResult
    public func heightMargin(_ relation: Relation, _ view: View, attribute: Attribute = .heightMargin, multiplier: CGFloat = 1, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.width:
                result = heightMargin(relation, view.widthAnchor, offset: offset, priority: priority, active: active)
            case Attribute.height:
                result = heightMargin(relation, view.heightAnchor, offset: offset, priority: priority, active: active)
            default:
            #if os(OSX)
                fatalError("Unsupported attribute")
            #else
                switch attribute {
                    case Attribute.widthMargin:
                        result = heightMargin(relation, view.layoutMarginsGuide.widthAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.heightMargin:
                        result = heightMargin(relation, view.layoutMarginsGuide.heightAnchor, offset: offset, priority: priority, active: active)
                    default:
                        fatalError("Unsupported attribute")
                }
            #endif
        }
        
        return result
    }
    
    @discardableResult
    public func heightMargin(min: CGFloat, max: CGFloat, _ view: View, multiplier: CGFloat = 1, priority: Priority = .required, active: Bool = true) -> [Constraint] {
        let min = heightMargin(.greaterThanOrEqual, view, attribute: .heightMargin, multiplier: multiplier, offset: min, priority: priority, active: active)
        let max = heightMargin(.lessThanOrEqual, view, attribute: .heightMargin, multiplier: multiplier, offset: max, priority: priority, active: active)
        
        return [min, max]
    }
    
    @discardableResult
    public func sizeMargin(_ relation: Relation, _ view: View, multiplier: CGSize = CGSize(width: 1, height: 1), offset: CGSize = .zero, priority: Priority = .required, active: Bool = true) -> Constraints {
        let w = widthMargin(relation, view, attribute: .widthMargin, multiplier: multiplier.width, offset: offset.width, priority: priority, active: active)
        let h = widthMargin(relation, view, attribute: .heightMargin, multiplier: multiplier.height, offset: offset.height, priority: priority, active: active)
        
        return [.widthMargin: w, .heightMargin: h]
    }
    
    @discardableResult
    public func sizeMargin(min: CGSize, max: CGSize, _ view: View, multiplier: CGSize = CGSize(width: 1, height: 1), priority: Priority = .required, active: Bool = true) -> [Attribute: [Constraint]] {
        let w = widthMargin(min: min.width, max: max.width, view, multiplier: multiplier.width, priority: priority, active: active)
        let h = heightMargin(min: min.height, max: max.height, view, multiplier: multiplier.height, priority: priority, active: active)
        
        return [.widthMargin: w, .heightMargin: h]
    }
    
    @discardableResult
    public func centerXMargin(_ relation: Relation, _ view: View, attribute: Attribute = .centerXMargin, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.left:
                result = centerXMargin(relation, view.leftAnchor, offset: offset, priority: priority, active: active)
            case Attribute.right:
                result = centerXMargin(relation, view.rightAnchor, offset: offset, priority: priority, active: active)
            case Attribute.leading:
                result = centerXMargin(relation, view.leadingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.trailing:
                result = centerXMargin(relation, view.trailingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerX:
                result = centerXMargin(relation, view.centerXAnchor, offset: offset, priority: priority, active: active)
            default:
            #if os(OSX)
                fatalError("Unsupported attribute")
            #else
                switch attribute {
                    case Attribute.leftMargin:
                        result = centerXMargin(relation, view.layoutMarginsGuide.leftAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.rightMargin:
                        result = centerXMargin(relation, view.layoutMarginsGuide.rightAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.leadingMargin:
                        result = centerXMargin(relation, view.layoutMarginsGuide.leadingAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.trailingMargin:
                        result = centerXMargin(relation, view.layoutMarginsGuide.trailingAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.centerXMargin,
                         Attribute.centerXWithinMargins:
                        result = centerXMargin(relation, view.layoutMarginsGuide.centerXAnchor, offset: offset, priority: priority, active: active)
                    default:
                        fatalError("Unsupported attribute")
                }
            #endif
        }
        
        return result
    }
    
    @discardableResult
    public func centerYMargin(_ relation: Relation, _ view: View, attribute: Attribute = .centerYMargin, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.top:
                result = centerYMargin(relation, view.topAnchor, offset: offset, priority: priority, active: active)
            case Attribute.bottom:
                result = centerYMargin(relation, view.bottomAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerY:
                result = centerYMargin(relation, view.centerYAnchor, offset: offset, priority: priority, active: active)
            case Attribute.lastBaseline:
                result = centerYMargin(relation, view.lastBaselineAnchor, offset: offset, priority: priority, active: active)
            case Attribute.firstBaseline:
                result = centerYMargin(relation, view.firstBaselineAnchor, offset: offset, priority: priority, active: active)
            default:
            #if os(OSX)
                fatalError("Unsupported attribute")
            #else
                switch attribute {
                    case Attribute.topMargin:
                        result = centerYMargin(relation, view.layoutMarginsGuide.topAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.bottomMargin:
                        result = centerYMargin(relation, view.layoutMarginsGuide.bottomAnchor, offset: offset, priority: priority, active: active)
                    case Attribute.centerYMargin,
                         Attribute.centerYWithinMargins:
                        result = centerYMargin(relation, view.layoutMarginsGuide.centerYAnchor, offset: offset, priority: priority, active: active)
                    default:
                        fatalError("Unsupported attribute")
                }
            #endif
        }
        
        return result
    }
    
    @discardableResult
    public func centerMargin(_ relation: Relation, _ view: View, offset: CGPoint = .zero, priority: Priority = .required, active: Bool = true) -> Constraints {
        let x = centerXMargin(relation, view, attribute: .centerXMargin, offset: offset.x, priority: priority, active: active)
        let y = centerYMargin(relation, view, attribute: .centerYMargin, offset: offset.y, priority: priority, active: active)
        
        return [.centerX: x, .centerY: y]
    }
}
