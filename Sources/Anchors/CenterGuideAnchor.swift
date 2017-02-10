//
//  CenterGuideAnchor.swift
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


public protocol CenterGuideAnchor: CenterAnchor {}

public extension CenterGuideAnchor {
    @discardableResult
    public func centerX(_ relation: Relation, _ guide: Guide, attribute: Attribute = .centerX, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.left:
                result = centerX(relation, guide.leftAnchor, offset: offset, priority: priority, active: active)
            case Attribute.right:
                result = centerX(relation, guide.rightAnchor, offset: offset, priority: priority, active: active)
            case Attribute.leading:
                result = centerX(relation, guide.leadingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.trailing:
                result = centerX(relation, guide.trailingAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerX:
                result = centerX(relation, guide.centerXAnchor, offset: offset, priority: priority, active: active)
            default:
                fatalError("Unsupported attribute")
        }
        
        return result
    }
    
    @discardableResult
    public func centerY(_ relation: Relation, _ guide: Guide, attribute: Attribute = .centerY, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.top:
                result = centerY(relation, guide.topAnchor, offset: offset, priority: priority, active: active)
            case Attribute.bottom:
                result = centerY(relation, guide.bottomAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerY:
                result = centerY(relation, guide.centerYAnchor, offset: offset, priority: priority, active: active)
            default:
                fatalError("Unsupported attribute")
        }
        
        return result
    }
    
    @discardableResult
    public func center(_ relation: Relation, _ guide: Guide, offset: CGPoint = .zero, priority: Priority = .required, active: Bool = true) -> Constraints {
        let x = centerX(relation, guide.centerXAnchor, offset: offset.x, priority: priority, active: active)
        let y = centerY(relation, guide.centerYAnchor, offset: offset.y, priority: priority, active: active)
        
        return [.centerX: x, .centerY: y]
    }
}
