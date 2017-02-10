//
//  BaselineAnchor.swift
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


public protocol BaselineAnchor {
    var firstBaselineAnchor: YAxisAnchor { get }
    var lastBaselineAnchor: YAxisAnchor { get }
}

public extension BaselineAnchor {
    @discardableResult
    public func firstBaseline(_ relation: Relation, _ anchor: YAxisAnchor, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch relation {
            case .equal:
                result = firstBaselineAnchor.equal(toAxis: anchor, offset: offset, priority: priority, active: active)
            case .greaterThanOrEqual:
                result = firstBaselineAnchor.greaterThanOrEqual(toAxis: anchor, offset: offset, priority: priority, active: active)
            case .lessThanOrEqual:
                result = firstBaselineAnchor.lessThanOrEqual(toAxis: anchor, offset: offset, priority: priority, active: active)
        }
        
        return result
    }
    
    @discardableResult
    public func lastBaseline(_ relation: Relation, _ anchor: YAxisAnchor, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch relation {
            case .equal:
                result = lastBaselineAnchor.equal(toAxis: anchor, offset: offset, priority: priority, active: active)
            case .greaterThanOrEqual:
                result = lastBaselineAnchor.greaterThanOrEqual(toAxis: anchor, offset: offset, priority: priority, active: active)
            case .lessThanOrEqual:
                result = lastBaselineAnchor.lessThanOrEqual(toAxis: anchor, offset: offset, priority: priority, active: active)
        }
        
        return result
    }
}
