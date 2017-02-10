//
//  EdgeAnchor.swift
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


public protocol EdgeAnchor {
    var leadingAnchor: XAxisAnchor { get }
    var trailingAnchor: XAxisAnchor { get }
    var leftAnchor: XAxisAnchor { get }
    var rightAnchor: XAxisAnchor { get }
    var topAnchor: YAxisAnchor { get }
    var bottomAnchor: YAxisAnchor { get }
}

public extension EdgeAnchor {
    @discardableResult
    public func leading(_ relation: Relation, _ anchor: XAxisAnchor, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch relation {
            case .equal:
                result = leadingAnchor.equal(toAxis: anchor, offset: offset, priority: priority, active: active)
            case .greaterThanOrEqual:
                result = leadingAnchor.greaterThanOrEqual(toAxis: anchor, offset: offset, priority: priority, active: active)
            case .lessThanOrEqual:
                result = leadingAnchor.lessThanOrEqual(toAxis: anchor, offset: offset, priority: priority, active: active)
        }
        
        return result
    }
    
    @discardableResult
    public func trailing(_ relation: Relation, _ anchor: XAxisAnchor, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch relation {
            case .equal:
                result = trailingAnchor.equal(toAxis: anchor, offset: offset, priority: priority, active: active)
            case .greaterThanOrEqual:
                result = trailingAnchor.greaterThanOrEqual(toAxis: anchor, offset: offset, priority: priority, active: active)
            case .lessThanOrEqual:
                result = trailingAnchor.lessThanOrEqual(toAxis: anchor, offset: offset, priority: priority, active: active)
        }
        
        return result
    }
    
    @discardableResult
    public func left(_ relation: Relation, _ anchor: XAxisAnchor, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch relation {
            case .equal:
                result = leftAnchor.equal(toAxis: anchor, offset: offset, priority: priority, active: active)
            case .greaterThanOrEqual:
                result = leftAnchor.greaterThanOrEqual(toAxis: anchor, offset: offset, priority: priority, active: active)
            case .lessThanOrEqual:
                result = leftAnchor.lessThanOrEqual(toAxis: anchor, offset: offset, priority: priority, active: active)
        }
        
        return result
    }
    
    @discardableResult
    public func right(_ relation: Relation, _ anchor: XAxisAnchor, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch relation {
            case .equal:
                result = rightAnchor.equal(toAxis: anchor, offset: offset, priority: priority, active: active)
            case .greaterThanOrEqual:
                result = rightAnchor.greaterThanOrEqual(toAxis: anchor, offset: offset, priority: priority, active: active)
            case .lessThanOrEqual:
                result = rightAnchor.lessThanOrEqual(toAxis: anchor, offset: offset, priority: priority, active: active)
        }
        
        return result
    }
    
    @discardableResult
    public func top(_ relation: Relation, _ anchor: YAxisAnchor, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch relation {
            case .equal:
                result = topAnchor.equal(toAxis: anchor, offset: offset, priority: priority, active: active)
            case .greaterThanOrEqual:
                result = topAnchor.greaterThanOrEqual(toAxis: anchor, offset: offset, priority: priority, active: active)
            case .lessThanOrEqual:
                result = topAnchor.lessThanOrEqual(toAxis: anchor, offset: offset, priority: priority, active: active)
        }
        
        return result
    }
    
    @discardableResult
    public func bottom(_ relation: Relation, _ anchor: YAxisAnchor, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch relation {
            case .equal:
                result = bottomAnchor.equal(toAxis: anchor, offset: offset, priority: priority, active: active)
            case .greaterThanOrEqual:
                result = bottomAnchor.greaterThanOrEqual(toAxis: anchor, offset: offset, priority: priority, active: active)
            case .lessThanOrEqual:
                result = bottomAnchor.lessThanOrEqual(toAxis: anchor, offset: offset, priority: priority, active: active)
        }
        
        return result
    }
}
