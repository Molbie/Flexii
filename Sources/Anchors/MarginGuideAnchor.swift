//
//  MarginGuideAnchor.swift
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


public protocol MarginGuideAnchor: MarginAnchor {}

public extension MarginGuideAnchor {
    @discardableResult
    public func leadingMargin(_ relation: Relation, _ guide: Guide, attribute: Attribute = .leadingMargin, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.left:
                result = leadingMargin(relation, guide.leftAnchor, offset: offset, priority: priority, active: active)
            case Attribute.right:
                result = leadingMargin(relation, guide.rightAnchor, offset: offset, priority: priority, active: active)
            case Attribute.leading:
                result = leadingMargin(relation, guide.leadingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.trailing:
                result = leadingMargin(relation, guide.trailingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerX:
                result = leadingMargin(relation, guide.centerXAnchor, offset: offset, priority: priority, active: active)
            default:
                fatalError("Unsupported attribute")
        }
        
        return result
    }
    
    @discardableResult
    public func trailingMargin(_ relation: Relation, _ guide: Guide, attribute: Attribute = .trailingMargin, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.left:
                result = trailingMargin(relation, guide.leftAnchor, offset: offset, priority: priority, active: active)
            case Attribute.right:
                result = trailingMargin(relation, guide.rightAnchor, offset: offset, priority: priority, active: active)
            case Attribute.leading:
                result = trailingMargin(relation, guide.leadingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.trailing:
                result = trailingMargin(relation, guide.trailingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerX:
                result = trailingMargin(relation, guide.centerXAnchor, offset: offset, priority: priority, active: active)
            default:
                fatalError("Unsupported attribute")
        }
        
        return result
    }
    
    @discardableResult
    public func leftMargin(_ relation: Relation, _ guide: Guide, attribute: Attribute = .leftMargin, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.left:
                result = leftMargin(relation, guide.leftAnchor, offset: offset, priority: priority, active: active)
            case Attribute.right:
                result = leftMargin(relation, guide.rightAnchor, offset: offset, priority: priority, active: active)
            case Attribute.leading:
                result = leftMargin(relation, guide.leadingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.trailing:
                result = leftMargin(relation, guide.trailingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerX:
                result = leftMargin(relation, guide.centerXAnchor, offset: offset, priority: priority, active: active)
            default:
                fatalError("Unsupported attribute")
        }
        
        return result
    }
    
    @discardableResult
    public func rightMargin(_ relation: Relation, _ guide: Guide, attribute: Attribute = .rightMargin, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.left:
                result = rightMargin(relation, guide.leftAnchor, offset: offset, priority: priority, active: active)
            case Attribute.right:
                result = rightMargin(relation, guide.rightAnchor, offset: offset, priority: priority, active: active)
            case Attribute.leading:
                result = rightMargin(relation, guide.leadingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.trailing:
                result = rightMargin(relation, guide.trailingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerX:
                result = rightMargin(relation, guide.centerXAnchor, offset: offset, priority: priority, active: active)
            default:
                fatalError("Unsupported attribute")
        }
        
        return result
    }
    
    @discardableResult
    public func topMargin(_ relation: Relation, _ guide: Guide, attribute: Attribute = .topMargin, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.top:
                result = topMargin(relation, guide.topAnchor, offset: offset, priority: priority, active: active)
            case Attribute.bottom:
                result = topMargin(relation, guide.bottomAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerY:
                result = topMargin(relation, guide.centerYAnchor, offset: offset, priority: priority, active: active)
            default:
                fatalError("Unsupported attribute")
        }
        
        return result
    }
    
    @discardableResult
    public func bottomMargin(_ relation: Relation, _ guide: Guide, attribute: Attribute = .bottomMargin, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.top:
                result = bottomMargin(relation, guide.topAnchor, offset: offset, priority: priority, active: active)
            case Attribute.bottom:
                result = bottomMargin(relation, guide.bottomAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerY:
                result = bottomMargin(relation, guide.centerYAnchor, offset: offset, priority: priority, active: active)
            default:
                fatalError("Unsupported attribute")
        }
        
        return result
    }
    
    @discardableResult
    public func widthMargin(_ relation: Relation, _ guide: Guide, attribute: Attribute = .widthMargin, multiplier: CGFloat = 1, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.width,
                 Attribute.widthMargin:
                result = widthMargin(relation, guide.widthAnchor, offset: offset, priority: priority, active: active)
            case Attribute.height,
                 Attribute.heightMargin:
                result = widthMargin(relation, guide.heightAnchor, offset: offset, priority: priority, active: active)
            default:
                fatalError("Unsupported attribute")
        }
        
        return result
    }
    
    @discardableResult
    public func heightMargin(_ relation: Relation, _ guide: Guide, attribute: Attribute = .heightMargin, multiplier: CGFloat = 1, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.width,
                 Attribute.widthMargin:
                result = heightMargin(relation, guide.widthAnchor, offset: offset, priority: priority, active: active)
            case Attribute.height,
                 Attribute.heightMargin:
                result = heightMargin(relation, guide.heightAnchor, offset: offset, priority: priority, active: active)
            default:
                fatalError("Unsupported attribute")
        }
        
        return result
    }
    
    @discardableResult
    public func centerXMargin(_ relation: Relation, _ guide: Guide, attribute: Attribute = .centerXMargin, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.left:
                result = centerXMargin(relation, guide.leftAnchor, offset: offset, priority: priority, active: active)
            case Attribute.right:
                result = centerXMargin(relation, guide.rightAnchor, offset: offset, priority: priority, active: active)
            case Attribute.leading:
                result = centerXMargin(relation, guide.leadingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.trailing:
                result = centerXMargin(relation, guide.trailingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerX:
                result = centerXMargin(relation, guide.centerXAnchor, offset: offset, priority: priority, active: active)
            default:
                fatalError("Unsupported attribute")
        }
        
        return result
    }
    
    @discardableResult
    public func centerYMargin(_ relation: Relation, _ guide: Guide, attribute: Attribute = .centerYMargin, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.top:
                result = centerYMargin(relation, guide.topAnchor, offset: offset, priority: priority, active: active)
            case Attribute.bottom:
                result = centerYMargin(relation, guide.bottomAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerY:
                result = centerYMargin(relation, guide.centerYAnchor, offset: offset, priority: priority, active: active)
            default:
                fatalError("Unsupported attribute")
        }
        
        return result
    }
    
    @discardableResult
    public func centerMargin(_ relation: Relation, _ guide: Guide, offset: CGPoint = .zero, priority: Priority = .required, active: Bool = true) -> Constraints {
        let x = centerXMargin(relation, guide, attribute: .centerXMargin, offset: offset.x, priority: priority, active: active)
        let y = centerYMargin(relation, guide, attribute: .centerYMargin, offset: offset.y, priority: priority, active: active)
        
        return [.centerX: x, .centerY: y]
    }
}
