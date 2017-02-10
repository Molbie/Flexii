//
//  Constraint.swift
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


public extension Collection where Self: ExpressibleByArrayLiteral, Self.Element == Constraint {
    public func activate() {
        if let constraints = self as? [Element] {
            Constraint.activate(constraints)
        }
    }
    
    public func deactivate() {
        if let constraints = self as? [Element] {
            Constraint.deactivate(constraints)
        }
    }
}

public extension Collection where Self: ExpressibleByDictionaryLiteral, Self.Key == Attribute, Self.Value == Constraint {
    public func activate() {
        if let constraints = self as? [Key: Value] {
            Array(constraints.values).activate()
        }
    }
    
    public func deactivate() {
        if let constraints = self as? [Key: Value] {
            Array(constraints.values).deactivate()
        }
    }
}

public extension Constraint {
    public func with(_ priority: Priority) -> Constraint {
        self.priority = priority.rawValue
        
        return self
    }
    
    public func activate(_ active: Bool) -> Constraint {
        isActive = active
        
        return self
    }
}
