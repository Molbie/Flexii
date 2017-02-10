//
//  EdgeGuideAnchor.swift
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


public protocol EdgeGuideAnchor: EdgeAnchor {}

public extension EdgeGuideAnchor {
    @discardableResult
    public func leading(_ relation: Relation, _ guide: Guide, attribute: Attribute = .leading, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.left:
                result = leading(relation, guide.leftAnchor, offset: offset, priority: priority, active: active)
            case Attribute.right:
                result = leading(relation, guide.rightAnchor, offset: offset, priority: priority, active: active)
            case Attribute.leading:
                result = leading(relation, guide.leadingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.trailing:
                result = leading(relation, guide.trailingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerX:
                result = leading(relation, guide.centerXAnchor, offset: offset, priority: priority, active: active)
            default:
                fatalError("Unsupported attribute")
        }
        
        return result
    }
    
    @discardableResult
    public func trailing(_ relation: Relation, _ guide: Guide, attribute: Attribute = .trailing, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.left:
                result = trailing(relation, guide.leftAnchor, offset: offset, priority: priority, active: active)
            case Attribute.right:
                result = trailing(relation, guide.rightAnchor, offset: offset, priority: priority, active: active)
            case Attribute.leading:
                result = trailing(relation, guide.leadingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.trailing:
                result = trailing(relation, guide.trailingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerX:
                result = trailing(relation, guide.centerXAnchor, offset: offset, priority: priority, active: active)
            default:
                fatalError("Unsupported attribute")
        }
        
        return result
    }
    
    @discardableResult
    public func left(_ relation: Relation, _ guide: Guide, attribute: Attribute = .left, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.left:
                result = left(relation, guide.leftAnchor, offset: offset, priority: priority, active: active)
            case Attribute.right:
                result = left(relation, guide.rightAnchor, offset: offset, priority: priority, active: active)
            case Attribute.leading:
                result = left(relation, guide.leadingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.trailing:
                result = left(relation, guide.trailingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerX:
                result = left(relation, guide.centerXAnchor, offset: offset, priority: priority, active: active)
            default:
                fatalError("Unsupported attribute")
        }
        
        return result
    }
    
    @discardableResult
    public func right(_ relation: Relation, _ guide: Guide, attribute: Attribute = .right, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.left:
                result = right(relation, guide.leftAnchor, offset: offset, priority: priority, active: active)
            case Attribute.right:
                result = right(relation, guide.rightAnchor, offset: offset, priority: priority, active: active)
            case Attribute.leading:
                result = right(relation, guide.leadingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.trailing:
                result = right(relation, guide.trailingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerX:
                result = right(relation, guide.centerXAnchor, offset: offset, priority: priority, active: active)
            default:
                fatalError("Unsupported attribute")
        }
        
        return result
    }
    
    @discardableResult
    public func top(_ relation: Relation, _ guide: Guide, attribute: Attribute = .top, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.top:
                result = top(relation, guide.topAnchor, offset: offset, priority: priority, active: active)
            case Attribute.bottom:
                result = top(relation, guide.bottomAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerY:
                result = top(relation, guide.centerYAnchor, offset: offset, priority: priority, active: active)
            default:
                fatalError("Unsupported attribute")
        }
        
        return result
    }
    
    @discardableResult
    public func bottom(_ relation: Relation, _ guide: Guide, attribute: Attribute = .bottom, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.top:
                result = bottom(relation, guide.topAnchor, offset: offset, priority: priority, active: active)
            case Attribute.bottom:
                result = bottom(relation, guide.bottomAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerY:
                result = bottom(relation, guide.centerYAnchor, offset: offset, priority: priority, active: active)
            default:
                fatalError("Unsupported attribute")
        }
        
        return result
    }
    
    @discardableResult
    public func edges(_ relation: Relation, _ guide: Guide, offset: Insets = .zero, priority: Priority = .required, active: Bool = true) -> Constraints {
        let topEdge = top(relation, guide, attribute: .top, offset: offset.top, priority: priority, active: active)
        let leftEdge = leading(relation, guide, attribute: .leading, offset: offset.left, priority: priority, active: active)
        let bottomEdge = bottom(relation, guide, attribute: .bottom, offset: offset.bottom, priority: priority, active: active)
        let rightEdge = trailing(relation, guide, attribute: .trailing, offset: offset.right, priority: priority, active: active)
        
        return [.top: topEdge, .leading: leftEdge, .bottom: bottomEdge, .trailing: rightEdge]
    }
}
