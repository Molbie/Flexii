//
//  SizeAnchor.swift
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


public protocol SizeAnchor {
    var widthAnchor: Dimension { get }
    var heightAnchor: Dimension { get }
}

public extension SizeAnchor {
    @discardableResult
    public func width(_ relation: Relation, _ offset: CGFloat, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch relation {
            case .equal:
                result = widthAnchor.equal(to: offset, priority: priority, active: active)
            case .greaterThanOrEqual:
                result = widthAnchor.greaterThanOrEqual(to: offset, priority: priority, active: active)
            case .lessThanOrEqual:
                result = widthAnchor.lessThanOrEqual(to: offset, priority: priority, active: active)
        }
        
        return result
    }
    
    @discardableResult
    public func width(min: CGFloat, max: CGFloat, priority: Priority = .required, active: Bool = true) -> [Constraint] {
        let min = width(.greaterThanOrEqual, min, priority: priority, active: active)
        let max = width(.lessThanOrEqual, max, priority: priority, active: active)
        
        return [min, max]
    }
    
    @discardableResult
    public func width(_ relation: Relation, _ anchor: Dimension, multiplier: CGFloat = 1, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch relation {
            case .equal:
                result = widthAnchor.equal(to: anchor, multiplier: multiplier, offset: offset, priority: priority, active: active)
            case .greaterThanOrEqual:
                result = widthAnchor.greaterThanOrEqual(to: anchor, multiplier: multiplier, offset: offset, priority: priority, active: active)
            case .lessThanOrEqual:
                result = widthAnchor.lessThanOrEqual(to: anchor, multiplier: multiplier, offset: offset, priority: priority, active: active)
        }
        
        return result
    }
    
    @discardableResult
    public func height(_ relation: Relation, _ offset: CGFloat, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch relation {
            case .equal:
                result = heightAnchor.equal(to: offset, priority: priority, active: active)
            case .greaterThanOrEqual:
                result = heightAnchor.greaterThanOrEqual(to: offset, priority: priority, active: active)
            case .lessThanOrEqual:
                result = heightAnchor.lessThanOrEqual(to: offset, priority: priority, active: active)
        }
        
        return result
    }
    
    @discardableResult
    public func height(min: CGFloat, max: CGFloat, priority: Priority = .required, active: Bool = true) -> [Constraint] {
        let min = height(.greaterThanOrEqual, min, priority: priority, active: active)
        let max = height(.lessThanOrEqual, max, priority: priority, active: active)
        
        return [min, max]
    }
    
    @discardableResult
    public func height(_ relation: Relation, _ anchor: Dimension, multiplier: CGFloat = 1, offset: CGFloat = 0, priority: Priority = .required, active: Bool = true) -> Constraint {
        let result: Constraint
        
        switch relation {
            case .equal:
                result = heightAnchor.equal(to: anchor, multiplier: multiplier, offset: offset, priority: priority, active: active)
            case .greaterThanOrEqual:
                result = heightAnchor.greaterThanOrEqual(to: anchor, multiplier: multiplier, offset: offset, priority: priority, active: active)
            case .lessThanOrEqual:
                result = heightAnchor.lessThanOrEqual(to: anchor, multiplier: multiplier, offset: offset, priority: priority, active: active)
        }
        
        return result
    }
    
    @discardableResult
    public func size(_ relation: Relation, _ offset: CGSize, priority: Priority = .required, active: Bool = true) -> Constraints {
        let w = width(relation, offset.width, priority: priority, active: active)
        let h = height(relation, offset.height, priority: priority, active: active)
        
        return [.width: w, .height: h]
    }
    
    @discardableResult
    public func size(min: CGSize, max: CGSize, priority: Priority = .required, active: Bool = true) -> [Attribute: [Constraint]] {
        let w = width(min: min.width, max: max.width, priority: priority, active: active)
        let h = height(min: min.height, max: max.height, priority: priority, active: active)
        
        return [.width: w, .height: h]
    }
}
