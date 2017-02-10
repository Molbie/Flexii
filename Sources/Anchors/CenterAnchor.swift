//
//  CenterAnchor.swift
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


public protocol CenterAnchor {
    var centerXAnchor: XAxisAnchor { get }
    var centerYAnchor: YAxisAnchor { get }
}

public extension CenterAnchor {
    @discardableResult
    public func centerX(_ relation: Relation, _ anchor: XAxisAnchor, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch relation {
            case .equal:
                result = centerXAnchor.equal(toAxis: anchor, offset: offset, priority: priority, active: active)
            case .greaterThanOrEqual:
                result = centerXAnchor.greaterThanOrEqual(toAxis: anchor, offset: offset, priority: priority, active: active)
            case .lessThanOrEqual:
                result = centerXAnchor.lessThanOrEqual(toAxis: anchor, offset: offset, priority: priority, active: active)
        }
        
        return result
    }
    
    @discardableResult
    public func centerY(_ relation: Relation, _ anchor: YAxisAnchor, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch relation {
            case .equal:
                result = centerYAnchor.equal(toAxis: anchor, offset: offset, priority: priority, active: active)
            case .greaterThanOrEqual:
                result = centerYAnchor.greaterThanOrEqual(toAxis: anchor, offset: offset, priority: priority, active: active)
            case .lessThanOrEqual:
                result = centerYAnchor.lessThanOrEqual(toAxis: anchor, offset: offset, priority: priority, active: active)
        }
        
        return result
    }
}
