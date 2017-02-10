//
//  BaselineGuideAnchor.swift
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


public protocol BaselineGuideAnchor: BaselineAnchor {}

public extension BaselineGuideAnchor {
    @discardableResult
    public func firstBaseline(_ relation: Relation, _ guide: Guide, attribute: Attribute = .firstBaseline, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.top:
                result = firstBaseline(relation, guide.topAnchor, offset: offset, priority: priority, active: active)
            case Attribute.bottom:
                result = firstBaseline(relation, guide.bottomAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerY:
                result = firstBaseline(relation, guide.centerYAnchor, offset: offset, priority: priority, active: active)
            default:
                fatalError("Unsupported attribute")
        }
        
        return result
    }
    
    @discardableResult
    public func lastBaseline(_ relation: Relation, _ guide: Guide, attribute: Attribute = .lastBaseline, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch attribute {
            case Attribute.top:
                result = lastBaseline(relation, guide.topAnchor, offset: offset, priority: priority, active: active)
            case Attribute.bottom:
                result = lastBaseline(relation, guide.bottomAnchor, offset: offset, priority: priority, active: active)
            case Attribute.centerY:
                result = lastBaseline(relation, guide.centerYAnchor, offset: offset, priority: priority, active: active)
            default:
                fatalError("Unsupported attribute")
        }
        
        return result
    }
}
